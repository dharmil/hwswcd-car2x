#!/usr/bin/env python
#@author dharmil

import socket
import math

class CARPMessage(object):
    def __init__(self, packet_number, message):
        self.message_list = ["C", "A", "R", "P", 0, packet_number, 0, len(message)] + message

    def get_message(self):
        return self.message_list

    def get_bytes(self):
        print self.message_list
        char_list = [chr(x) if isinstance(x, int) else x for x in self.message_list] #convert to char 
        print char_list
        return bytearray(x for x in self.message_list)

class BaseMessage(object):
    def __init__(self):
        self.message_list = []

    def set_header(self, message_type, message_length, subtype, flags):
        self.message_list = self.message_list + [message_type, message_length, subtype, flags]

        print self.message_list

    def add_arguments(self, *arg):
        print self.message_list
        assert len(arg) == self.message_list[1] - 4 #make sure count of arguments matches
        self.message_list = self.message_list + list(arg)

    def build(self):
        raise NotImplementedError()

    def get_message(self):
        return self.message_list

class WelcomeMessage(BaseMessage):
    def __init__(self):
         BaseMessage.__init__(self)
         self.set_header(0x01, 12, 0, 0)
    def build(self):
        pass

class CarVelocityMessage(BaseMessage):
    def __init__(self):
        BaseMessage.__init__(self)
        self.set_header(0x04, 8, 0, 0)

    def build(self, desired_speed, current_speed):
        self.add_arguments(0, desired_speed, 0, current_speed)

class CarControlMessage(BaseMessage):
    def __init__(self):
        BaseMessage.__init__(self)
        self.set_header(0x30, 12, 0, 0)

    def build(self, speed1, speed2, speed3, speed4):
        speeds = [speed1, speed2, speed3, speed4]
        print speeds

        for speed in speeds:
            assert speed <= (2 ** 16)/2 and speed >= -((2 ** 16)/2)

        for i in xrange(len(speeds)):
            if speeds[i] < 0:
                ''' -1 should equal 2^16 in two's complement
                    -2 = 2^16 - 1
                    -3 = 2^16 - 2
                    pattern:
                    -x = 2^16 + x + 1
                    -3 = 2^16 + -3 + 1 = 2^16 - 2
                '''
                speeds[i] = 2**16 + speeds[i] + 1

        print speeds

        '''We need to be able to pass in a 16-bit integer for each of the for speeds. http://stackoverflow.com/questions/10854466/how-convert-two-bytes-into-one-16-bit-number
           Using this formula, I can represent any speed upto 2^16 by part 1 being a multiplication factor and part two being an addition
           For example: 3000 = floor(3000 / 256) * 256 + (3000 % 256)'''

        self.add_arguments(int(math.floor(speeds[0] / 256)), speeds[0] % 256, int(math.floor(speeds[1] / 256)), speeds[1] % 256, int(math.floor(speeds[2] / 256)), speeds[2] % 256, int(math.floor(speeds[3] / 256)), speeds[3] % 256)

class EmergencyBreakMessage(BaseMessage):
    def __init__(self):
        BaseMessage.__init__(self)
        self.set_header(0x20, 4, 0, 0)

    def build():
        pass

class RemoteControlMessage(BaseMessage):
    def __init__(self):
        BaseMessage.__init__(self)
        self.set_header(0x60, 8, 0, 0)

    def build(self, ip1, ip2, ip3, ip4):
        self.add_arguments(ip1, ip2, ip3, ip4)

message = CarControlMessage()
message.build(-32000, 32000, -32000, 32000)
# message = RemoteControlMessage()
# message.build(192, 168, 0, 100)

carpMessage = CARPMessage(1, message.get_message())
message_bytes = carpMessage.get_bytes()

#TCP_IP = '192.168.0.200' #Cyclone board ip
TCP_IP = '127.0.0.1'
TCP_PORT = 23
BUFFER_SIZE = 1024

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((TCP_IP, TCP_PORT))
s.send(message_bytes)
print "Sent data"
data = s.recv(BUFFER_SIZE)
print "Got " + data + " with len " + str(len(data))
print list(data)
s.close()