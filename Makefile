CC = gcc
CLFAGS = -Wall
LDFLAGS = -shared -fPIC -lev

all:
	$(CC) $(CFLAGS) jsonrpc-c.c cJSON.c -o libjsonrpcc.so $(LDFLAGS)

install:
	install -m 644 libjsonrpcc.so /usr/local/lib
	install -m 644 jsonrpc-c.h /usr/local/include
	install -m 644 cJSON.h /usr/local/include
