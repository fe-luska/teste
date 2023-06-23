obj-m += hello.o

KDIR = /usr/src/linux-headers-5.15.0-75-generic

all:
	# $(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules_prepare
	# $(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
	$(MAKE) -C $(KDIR) M=$(shell pwd) modules
clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order