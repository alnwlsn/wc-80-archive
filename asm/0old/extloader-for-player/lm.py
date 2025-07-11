import time
import serial
import time

s = serial.Serial("COM10", 1000000)

w = b""
while w!= b">":
    w=s.read() #wait for > prompt
time.sleep(0.05)


s.write(b'lm\r')

time.sleep(0.05)
print("done")