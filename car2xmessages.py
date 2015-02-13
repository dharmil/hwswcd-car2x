#!/usr/bin/env python
#@author dharmil

"""This script will allow sending Car2x messages to the cyclone board of the car. 
   It can be used as a wrapper to manually control the car or for debugging purposes.
   Usage: Please use this script in ipython as it will allow tab completion!
   ipython
   
   import car [TAB]
   import car2xmessages as c2x

   rc = c2x. [TAB]
   rc = c2x.RemoteControlMessage('192.168.0.100')
   c2x.send(rc)

   Now the computer has control of the car!

   cc = c2x. [TAB]
   cc = c2x.CarControlMessage(100, 100, 100, 100)
   c2x.send(cc)

   Now all the wheels will rotate with 100 as the speed!

   eb = c2x. [TAB]
   eb = c2x.EmergencyBreakMessage()
   c2x.send(eb)

   Now all the wheels of the car will have immediately stopped and car won't accept any other commands!
"""

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
    def __init__(self, message_type, message_length, subtype, flags):
        self.message_list = [message_type, message_length, subtype, flags]

        print self.message_list

    def add_arguments(self, *arg):
        print self.message_list
        assert len(arg) == self.message_list[1] - len(self.message_list) #make sure count of arguments matches
        self.message_list = self.message_list + list(arg)

    def build(self):
        raise NotImplementedError()

    def get_message(self):
        return self.message_list

class WelcomeMessage(BaseMessage):
    def __init__(self):
         BaseMessage.__init__(self, 0x01, 12, 0, 0)
         self.build()

    def build(self):
        raise NotImplementedError()

class CarVelocityMessage(BaseMessage):
    """This message is for individual wheels"""
    
    def __init__(self, desired_speed, current_speed):
        BaseMessage.__init__(self, 0x04, 8, 0, 0)
        self.build(desired_speed, current_speed)

    def build(self, desired_speed, current_speed):
        self.add_arguments(0, desired_speed, 0, current_speed)

class CarControlMessage(BaseMessage):
    """Init a CarControlMessage.
       @param speed1 - Speed for left front wheel
       @param speed2 - Speed for left rear wheel
       @param speed3 - Speed for right front wheel
       @param speed4 - Speed for right rear wheel
       Values need to be between -32768 and +32768"""
    
    def __init__(self, speed1, speed2, speed3, speed4):
        BaseMessage.__init__(self, 0x30, 12, 0, 0)
        self.build(speed1, speed2, speed3, speed4)

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
                speeds[i] = 2**16 + speeds[i] #fix the off-by-one error

        print speeds

        '''We need to be able to pass in a 16-bit integer for each of the for speeds. http://stackoverflow.com/questions/10854466/how-convert-two-bytes-into-one-16-bit-number
           Using this formula, I can represent any speed upto 2^16 by part 1 being a multiplication factor and part two being an addition
           For example: 3000 = floor(3000 / 256) * 256 + (3000 % 256)'''

        self.add_arguments(int(math.floor(speeds[0] / 256)), speeds[0] % 256, int(math.floor(speeds[1] / 256)), speeds[1] % 256, int(math.floor(speeds[2] / 256)), speeds[2] % 256, int(math.floor(speeds[3] / 256)), speeds[3] % 256)

class EmergencyBreakMessage(BaseMessage):
    """Init a EmergencyBreakMessage to stop all the wheels.
       After this message is executed, the car won't respond to any other commands!
    """

    def __init__(self):
        BaseMessage.__init__(self, 0x20, 4, 0, 0)
        self.build()

    def build(self):
        pass

class RemoteControlMessage(BaseMessage):
    """Init a RemoteControlMessage to auth my computer
        @param ip - Complete ip in string like 255.255.0.0
    """    

    def __init__(self, ip):
        BaseMessage.__init__(self, 0x60, 8, 0, 0)
        self.build(ip)

    def build(self, ip):
        ip_list = ip.split('.')

        for ip in ip_list:
            assert int(ip) >= 0 and int(ip) <= 255

        self.add_arguments(int(ip_list[0]), int(ip_list[1]), int(ip_list[2]), int(ip_list[3]))


def send(message_instance):
    carpMessage = CARPMessage(1, message_instance.get_message())
    message_bytes = carpMessage.get_bytes()

    #TCP_IP = '127.0.0.1' #echo server ip
    TCP_IP = '192.168.0.200' #Cyclone board ip
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

def main():
    message = CarControlMessage(-32000, 32000, -32000, 32000)
    # message = RemoteControlMessage(192, 168, 0, 100)
    send(message)

if __name__ == "__main__":
    main()