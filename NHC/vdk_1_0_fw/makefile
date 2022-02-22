#makefile N76E003AT20
#Ngo Hung Cuong

CC = sdcc
PRJ = VKD_1_0
FLASH_SIZE = 10240
XRAM_SIZE = 512

#do not edit
OBJ_DIR = obj

SRC = main.c
SRC += gpio.c
SRC += usb.c
SRC += spi.c
SRC += usbisp.c
SRC += ICP_N76E003.c
SRC += C2.c
SRC += callback.c

OBJS = $(patsubst %.c,obj/%.rel,$(SRC))

all: $(OBJS)
	$(CC) --xram-loc 0 --xram-size $(XRAM_SIZE) $(OBJS) -o $(PRJ).ihx
	packihx $(PRJ).ihx > $(PRJ).hex
	makebin -s $(FLASH_SIZE) $(PRJ).ihx $(PRJ).bin
	
obj/%.rel: %.c
	$(CC) --xram-loc 0 --xram-size $(XRAM_SIZE) -c $< -I. -o $@

flash: all
	vnproch551 $(PRJ).bin

clean:
	rm -f obj/*.*
	rm -f $(PRJ).*
