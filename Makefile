
TCH = arm-none-eabi-
OPT=-mcpu=cortex-m3 -mthumb


SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

project_nam = application.

all : $(project_nam)hex

%.o : %.c
	$(TCH)gcc -c -g $(OPT) $< -o $@

$(project_nam)elf : $(OBJ)
	$(TCH)ld -T LinkerScrip.ld $(OBJ) -o $@
	$(TCH)ld -T LinkerScrip.ld $(OBJ) -o application.o
$(project_nam)hex : $(project_nam)elf

	$(TCH)objcopy -O ihex $< $@



clean :
	rm *.o *.elf *.hex