#!/usr/bin/env python 

""" 
A simple echo server 
Taken from http://ilab.cs.byu.edu/python/socket/echoserver.html
""" 

import socket 

host = '' 
port = 23 
backlog = 5 
size = 1024 
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
s.bind((host,port)) 
s.listen(backlog) 

print "Started echo server; Waiting for communication from clients"

while True: 
    client, address = s.accept() 
    data = client.recv(size) 

    print "Got " + data + " with len " + str(len(data))
    print list(data)

    if data: 
        client.send(data)
    client.close()