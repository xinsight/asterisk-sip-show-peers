

APP=sip-show-peers
BINDIR=/usr/local/bin/

default:
	gcc -o $(APP) sip-show-peers.c

install:
	install -s $(APP) $(BINDIR)
	@echo "== note: binary needs to be setuid root. =="
	chown root $(BINDIR)$(APP)
	chmod u+s $(BINDIR)$(APP)

clean:
	rm $(APP)

