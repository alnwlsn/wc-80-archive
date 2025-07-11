# keyboard label generator for alnwlsn's custom keyboard
# generates square images to be laser printed onto keycaps

from itertools import count
from HersheyFonts import HersheyFonts
from PIL import Image, ImageDraw

hfont = HersheyFonts()
#hfont.load_default_font("greek")
#hfont.load_default_font("mathlow")
hfont.load_default_font("rowmans")
hfont.normalize_rendering(1)

dimX = 500
dimY = 500
lwidth = 3

img = Image.new('RGB', (dimX, dimY), (0, 255, 255))
dr = ImageDraw.Draw(img)


def drawLinePIL(dr, x1, y1, x2, y2, width, color):
    # draws line in PIL with thickness and rounded ends
    dr.line((x1, y1, x2, y2), width=width, fill=color)
    radius = width/2
    dr.ellipse((x1 - radius + 1, y1 - radius + 1, x1 + radius -
               1, y1 + radius - 1), fill=color, outline=None)
    dr.ellipse((x2 - radius + 1, y2 - radius + 1, x2 + radius -
               1, y2 + radius - 1), fill=color, outline=None)


def draw_line(x1, y1, x2, y2):
    # shuffle around coordinates to get the image correct
    drawLinePIL(dr, x1+(dimX/2), dimY-y1, x2 +
                (dimX/2), dimY-y2, lwidth, (0, 0, 0))


def drawText(x, y, h, text, rotate):  # draws text of height h, with lower left corner near x,y
    for (x1, y1), (x2, y2) in hfont.lines_for_text(text):
        if(rotate == 0):
            draw_line(x1*h+x, y1*h+y, x2*h+x, y2*h+y)
        elif(rotate == 1):
            draw_line(-y1*h+x, x1*h+y, -y2*h+x, x2*h+y)
        elif(rotate == 2):
            draw_line(-x1*h+x, -y1*h+y, -x2*h+x, -y2*h+y)
        elif(rotate == 3):
            draw_line(y1*h+x, -x1*h+y, y2*h+x, -x2*h+y)


# draws text of height h, with center in length of text
def drawTextCenter(x, y, h, text, rotate):
    maxY = 0
    maxX = 0
    minY = 10000000000
    minX = 10000000000
    for (x1, y1), (x2, y2) in hfont.lines_for_text(text):
        if x1 > maxX:
            maxX = x1
        if x2 > maxX:
            maxX = x2
        if y1 > maxY:
            maxY = y1
        if y2 > maxY:
            maxY = y2
        if x1 < minX:
            minX = x1
        if x2 < minX:
            minX = x2
        if y1 < minY:
            minY = y1
        if y2 < minY:
            minY = y2
    # print(minX,maxX,minY,maxY)
    rngX = maxX-minX
    rngY = maxY-minY
    if(rotate == 0):
        drawText(x-(h*rngX/2)-(h*minX), y, h, text, 0)
    elif(rotate == 1):
        drawText(x, y-(h*rngX/2)-(h*minX), h, text, 1)
    elif(rotate == 2):
        drawText(x+(h*rngX/2)+(h*minX), y, h, text, 2)
    elif(rotate == 3):
        drawText(x, y+(h*rngX/2)+(h*minX), h, text, 3)


thicknessScale = 0.10  # multiply letter height by this to get line thickness

keys = [
    ("!", "1", 0.4),
    ("\"", "2", 0.4),
    ("#", "3", 0.4),
    ("$", "4", 0.4),
    ("%", "5", 0.4),
    ("&", "6", 0.4),
    ("\'", "7", 0.4),
    ("(", "8", 0.4),
    (")", "9", 0.4),
    (" ", "0", 0.4),

    ("+", ";", 0.4),
    ("<", ",", 0.4),
    (">", ".", 0.4),
    ("?", "/", 0.4),
    ("*", ":", 0.4),
    ("=", "-", 0.4),

    ("Q", 0.7),
    ("W", 0.7),
    ("E", 0.7),
    ("R", 0.7),
    ("T", 0.7),
    ("Y", 0.7),
    ("U", 0.7),
    ("I", 0.7),
    ("O", 0.7),
    ("P", 0.7),
    ("A", 0.7),
    ("S", 0.7),
    ("D", 0.7),
    ("F", 0.7),
    ("G", 0.7),
    ("H", 0.7),
    ("J", 0.7),
    ("K", 0.7),
    ("L", 0.7),
    ("Z", 0.7),
    ("X", 0.7),
    ("C", 0.7),
    ("V", 0.7),
    ("B", 0.7),
    ("N", 0.7),
    ("M", 0.7),
    ("@", 0.7),

    ("BREAK", 0.25),
    ("SHIFT", 0.25),
    ("CLEAR", 0.25),
    ("ENTER", 0.25),
    ("CTRL", 0.25),
    ("ALT", 0.25),
    ("META", 0.25),
    ("ALTGR", 0.25),

    (chr(105), 0.8),  # these are the arrows, but you need to change the font to mathlow
    (chr(106), 0.8),
    (chr(107), 0.8),
    (chr(108), 0.8),

    ("Z80", 0.25),

    ("RESET", 0.25),
    ("NMI", 0.25),
    ("CONTROL", 0.2),
    ("ANY", 0.25),
    ("SAVE", 0.25),
    ("SUPER", 0.25),
    ("SYS", 0.25),
    ("BIOS", 0.25)
]

# for i in range(0, 256):
#     dr.rectangle((0, 0, dimX, dimY), fill=(255, 255, 255))  # blank image
#     lheight = round(0.7 * dimY)
#     lwidth = round(thicknessScale * lheight)
#     yoffset = round((dimY/1.66)*(0.8-0.7))
#     drawTextCenter(0, yoffset, lheight, chr(i), 0)
#     img.save(str(i)+"x.png")

counter = 0
for key in keys:
    counter += 1
    dr.rectangle((0, 0, dimX, dimY), fill=(255, 255, 255))  # blank image
    if(len(key) == 2):  # normal key; one character per cap
        lheight = round(key[1] * dimY)
        lwidth = round(thicknessScale * lheight)
        yoffset = round((dimY/1.66)*(0.8-key[1]))
        drawTextCenter(0, yoffset, lheight, key[0], 0)
        img.save(str(counter)+".png")
    if(len(key) == 3):  # 2 characters per cap
        if(key[0] != ""):  # top character
            lheight = round(key[2] * dimY)
            lwidth = round(thicknessScale * lheight)
            yoffset = round(((dimY/1.66)*(0.8-key[2]))+(dimY*0.24))
            drawTextCenter(0, yoffset, lheight, key[0], 0)
        if(key[1] != ""):  # bottom character
            lheight = round(key[2] * dimY)
            lwidth = round(thicknessScale * lheight)
            yoffset = round(((dimY/1.66)*(0.8-key[2]))-(dimY*0.24))
            drawTextCenter(0, yoffset, lheight, key[1], 0)
        img.save(str(counter)+".png")
