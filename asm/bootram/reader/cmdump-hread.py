import struct

file = open("pool.bin","rb")

out = open("out.csv","wb")

sample = 0
while True:
    b = file.read(4)
    if(not b):
        break
    r = struct.unpack("<I",b)[0]
    cid = (r>>29)&7
    time = (r>>16)&0b1111111111111
    data = (r>>8)&0b11111111
    addr = r&0b11111111
    st = "{:05d},{:01d},{:03d},{:03d},{:01.3f}".format(sample,cid,addr,data,time/1000.0)
    out.write((st+"\r\n").encode("utf8"))
    sample += 1

out.close()
file.close()

print("done")

# <chip address 8> <chip data 8> <chip select 3> <time to next 5+8>
# ccc hththt ltltltlt dddddddd aaaaaaaa