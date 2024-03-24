COMPILER_PATH = /home/skrmgrm/coursera/assignment-2-skrmgrm/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin
CROSS_COMPILE = $(COMPILER_PATH)/aarch64-none-linux-gnu-
CFLAGS = -g -Wall  

writer:
	$(CROSS_COMPILE)gcc $(CFLAGS) -o writer writer.c

clean:
	rm -f writer *.o