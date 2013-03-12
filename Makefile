# CC=clang
CC = gcc

all: client server

client: client.c shared.h shared.c
	$(CC) client.c shared.c -Wall -Wextra -Werror -o client

server: server.c shared.h shared.c
	$(CC) server.c shared.c -Wall -Wextra -Werror -o server

clean:
	rm -rf client server
