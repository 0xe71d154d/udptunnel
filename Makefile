INCLUDE = -I./include
CC = gcc
#CC = /home/felipe/Sources/OpenWrt-SDK-brcm47xx-2.6-for-Linux-i686/staging_dir_mipsel/bin/mipsel-linux-gcc
CFLAGS = -Wall

all: socket.o tun.o util.o client.o server.o binn.o log.o ini.o
	$(CC) socket.o tun.o util.o client.o binn.o log.o ini.o -o client
	$(CC) socket.o tun.o util.o server.o binn.o log.o ini.o -o server

socket.o: socket.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?

tun.o: tun.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?

util.o: util.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?

client.o: client.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?

server.o: server.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?

binn.o: binn.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?

log.o: log.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?

ini.o: ini.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $?
clean:
	rm -f *.o client server
