# thingy for loading via DPIO on AVRMON - Alnwlsn's WC80 Computer Project
# uses AVRMON2 running on the onboard AVR and the shared dual port RAM
from fileinput import filename
from socket import timeout
from cv2 import add
from parso import parse
import serial
import argparse

parser = argparse.ArgumentParser(
    description='Writes a file to the WC80 memory using DPIO')
parser.add_argument(
    'COM', type=str, help='COM port on which AVR board is attached')
parser.add_argument(
    'ADR', type=str, help='[HEX] address at which to start write')
parser.add_argument(
    '-j', type=str, help='[HEX] address at which to jump after writing')
parser.add_argument('FILE', type=str, help='file to write')
args = parser.parse_args()


class dpio:
    def __init__(self, port):
        self.s = serial.Serial(port, 1000000, timeout=1)
        # on Serial port open, AVRMON will restart
        w = b""
        while w != b">":
            w = self.s.read()  # wait for > prompt
        self.s.write(b'*\r')  # enter DPIO terminal
        while w != b"\x00":
            w = self.s.read()  # wait for null (DPIO) prompt
        self.s.reset_input_buffer()

    def txn(self, command, address, data):  # complete DPIO transaction
        self.s.write(command.to_bytes(1, 'little'))
        self.s.write(address.to_bytes(2, 'little'))
        self.s.write(data.to_bytes(1, 'little'))
        rxd = self.s.read()
        if(rxd == b''):
            print("Serial timed out - quitting")
            quit()
        return rxd

    def read(self, address):
        return self.txn(2, address, 0)

    def write(self, address, data):
        return self.txn(1, address, data)

    def inp(self, address):
        return self.txn(4, address, 0)

    def out(self, address, data):
        return self.txn(3, address, data)

    def jump(self, address):
        self.s.write((5).to_bytes(1, 'little'))
        self.s.write(address.to_bytes(2, 'little'))
        self.s.write((0).to_bytes(1, 'little'))


tAddress = int(args.ADR, 16)

print("Sending", args.FILE, "to address 0x{:04x}".format(tAddress))

m = dpio("COM10")
with open(args.FILE, "rb") as f:
    while (tx := f.read(1)):
        m.write(tAddress, tx[0])
        rx = m.read(tAddress)
        if(rx != tx):
            print("verify failed at 0x{:04x}".format(tAddress))
            quit()
        tAddress += 1
if(args.j != None):
    m.jump(int(args.j, 16))
