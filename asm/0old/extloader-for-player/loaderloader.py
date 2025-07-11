#thingy for loading via ARVMON program / board for my Z80 computer project
from fileinput import filename
import serial
import time
import sys

#USAGE: z80ard <command (lww or eww)> <address (paramater to command)> <filename of binary>

tfilename = "extloader.bin"
taddress = "200"
ttype = "lww"

# if __name__ == "__main__":
#     ttype = sys.argv[1]
#     taddress = sys.argv[2]
#     tfilename = sys.argv[3]

s = serial.Serial("COM10", 1000000)

w = b""
while w!= b">":
    w=s.read() #wait for > prompt
time.sleep(0.05)

s.write(b'lm\r')
time.sleep(0.2)

s.write(ttype.encode())
s.write(b' ')
s.write(taddress.encode())
s.write(b'\r')
time.sleep(0.05)

f = open(tfilename,"rb")

count = 0
while True:
    b = f.read(1)
    if not b:
        f.close()
        break
    else:
        #print(count, "{:02x}".format(ord(b)))
        s.write("{:02x}".format(ord(b)).encode())
        s.write(b'\r')
        time.sleep(0.005)
        count += 1 

s.write(b'\r\r\r')

print("done")