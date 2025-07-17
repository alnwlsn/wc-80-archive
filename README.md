# The WC-80 (archive)

![image of WC-80 Cube running](running.jpg)

Homebrew Z80 computer which is not quite a TRS-80 Model 1 clone. 

## Background
Some time ago when I was in college (not that long ago, mind you, it was like 2018), I found a TRS-80 Model 1. It was the first (non-IBM PC) retrocomputer I had ever got my hands on, and in my book, is absolutely legendary, for reasons I'll have to get into some other time. What's important is that what I got was *only* the keyboard, so no power supply, no cables, no display. The first thing I tried to do with it was cobble up a power supply, and wire up an adapter so I could plug the machine into a regular TV's composite video. I powered it on. It was a working unit. 

What you get with just the base Model 1 "keyboard" is:
- Z80 CPU @ 1.77 MHz
- ROM with Level II (microsoft) BASIC
- 16K of RAM
- video output
    - "almost" NTSC / RS170 (black and white only)
    - 64 columns x 16 rows, 6x12 px character resolution, fixed character set
- cassette interface
- the keyboard itself

That's  pretty limiting if you want to do stuff(tm) with the machine. In particular, the cassette interface is a real bottleneck, taking minutes on end to load things, and it's the only way to do so besides typing it in. People thought so too in the TRS-80's heyday, so the platform evolved to have floppy disks, more memory, various operating systems, a serial port, maybe even a hard drive. These were provided by a box that plugs into the TRS-80's keyboard called the 'Expansion Interface (EI)' I did not an Expansion Interface, and they were rare and expensive on Ebay. But, the TRS-80 is old enough that it is made mostly out of standard 74 logic ICs, rather than custom chips like the C64 or later machines have, and all the schematics are right there in the manual. Having more time than any other resource back then, I thought to myself "how hard can it be?"

Following the schematics, this is what led me to create my [hand-wired Expansion Interface unit](https://alnwlsn.com/projectrepository/index.php?title=TRS-80_Model_1_-_Wilson_Expansion_Interface) and had me boot my TRS-80 from a floppy disk for possibly the first time in its life. That was not quite built as stock though:
- SRAM for extra RAM instead of DRAMs
    - why not, RAM is cheap here in the future
    - 128K ram used, in 4 swappable banks of 32K
        - just because I can, haven't done much with this
- Arduino with 1K dual port RAM put in 'hole' in TRS-80 memory map at 0x3000
    - easy and quick way to get data from modern laptop to TRS-80 RAM
- 'equivalent' logic gates, not exact chips used in EI (based on what chips I happened to have or get easily)

The hand built unit had obvious problems though:
- tedious soldering assembly
- unreliable "stacked pin header" interconnects
- not very modular, hard to add more hardware
- fragile

I then started this project to clean up the hand built unit into some real PCBs, which would go into a backplane. If I wanted to add more hardware, I could just make another card. After building most of the EI, I realized that there wasn't all that much to the rest of the computer, so I built modules for that too. Thus, the WC-80 (W Cube Z80) was born.

This project is idle at the moment because since starting it, I have obtained a good number of real TRS-80 machines to work on. I haven't touched the WC-80 since around 2023, which means I've forgotten most of whatever I was doing on it. Still, it's probably more useful published here as incomplete than just sitting on my hard drive. When I pick up this project again, I'll probably continue in a new repo, which will be linked here if it exists.

## General guidelines:
- 100x100mm total board size
    - this is the cheap "loss leader" size offered by PCBWay and JLC. A board twice this area costs more than double the price.
- where possible, SMD SOIC packages
    - much more compact than DIP, but still easily solderable by hand with an iron
        - plus, you don't have to flip the board over
- 2 layer boards (cheapest)
- 0.2mm track width for data signals
    - fits between SOIC pads
- 74HCT (CMOS w/ TTL level inputs) over HC or LS parts, where possible
- autorouted (w/ some manual routing) with [TopoR](https://en.wikipedia.org/wiki/TopoR)
    - usually get my fill of manually routing boards at work
- designed around whatever ICs I can get for cheap
- fit as much stuff as I can onto each board
    - I paid for the whole board, I'm gonna use the whole board


## Boards
### Backplane
!()

```alnwlsn-ssg
title: The WC-80 (archive)
subtitle: homebrew TRS-80 I made one time
date: 2025-07-16
labels: retrocomputing, trs80
```
