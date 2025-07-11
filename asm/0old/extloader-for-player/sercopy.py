#thingy for bridging the output of 2 COM ports
import serial

s = serial.Serial("COM10", 1000000)
q = serial.Serial("COM4", 1000000)

while True:
    while s.in_waiting:
        z = s.read(1)
        q.write(z)
    while q.in_waiting:
        z = q.read(1)
        s.write(z)
        pass