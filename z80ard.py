# thingy for loading via ARVMON program / board for my Z80 computer project
# uses AVRMON2 running on the onboard AVR and the shared dual port RAM (sometimes with z80 code inside)
from fileinput import filename
import serial
import sys

# USAGE: z80ard <port> <method> <address (paramater to command)> <filename of binary>

tFilename = "dol.bin"
tAddress = 0
tPort = "COM9"
tMethod = "lww"

tPort = sys.argv[1]
tMethod = sys.argv[2]
tAddress = int(sys.argv[3], 16)
tFilename = sys.argv[4]

print("Uploading", tFilename, "via", tPort, "using", tMethod, "to", tAddress)

s = serial.Serial(tPort, 1000000)

#on Serial port open, AVRMON will restart
w = b""
while w != b">":
    w = s.read()  # wait for > prompt

if(tMethod == "exl"):
    s.write(b'lm 1 \r')
    print("Jump to 3000, then press Enter")
    input()

    f = open(tFilename, "rb")

    chunkIndex = 0
    chunk = 0
    exitflag = 0
    while True:
        if(exitflag == 0):
            b = f.read(1)
            if not b:
                f.close()
                exitflag = 1
        if(exitflag == 1):
            b = b'\x00'
        if(chunkIndex == 0):
            w = b' '
            while w != b">":
                s.write(b'\r')
                w = s.read()
            s.write(b'exl ')
            s.write("{:02x}".format(tAddress+(chunk*128)).encode())
            s.write(b'\r')
            if(chunk % 8 == 0):
                print(int((chunk*128)/1024), "K", sep='')
            s.write(b)
            chunkIndex = 1
        elif(chunkIndex == 127):
            s.write(b)
            s.flush()
            w = b' '
            while w != b"<":
                w = s.read()
            w = s.read()
            if(w == b'3'):
                chunk += 1
            chunkIndex = 0
            s.flush()
            if(exitflag == 1):
                break
        else:
            s.write(b)
            chunkIndex += 1
    s.write(b'\r')
    s.flush()
    w = b' '
    while w != b">":
        w = s.read()
    s.write(b'lw 300 0\r')
    w = b' '
    while w != b">":
        w = s.read()
    s.write(b'lw 300 ff\r')
    quit()

if(tMethod == "lww"):
    s.write(b'lww ')
    s.write("{:02x}".format(tAddress).encode())
    s.write(b'\r')

    f = open(tFilename,"rb")

    count = 0
    while True:
        b = f.read(1)
        if not b:
            f.close()
            break
        else:
            print(count, "{:02x}".format(ord(b)))
            s.write("{:02x}".format(ord(b)).encode())
            s.write(b'\r')
            w = b""
            while w!= b">":
                w=s.read() #wait for > prompt
            count += 1 

    s.write(b'\r\r\r')
    print("done")
    quit()