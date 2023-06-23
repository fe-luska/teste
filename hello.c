#include <linux/init.h>
#include <linux/module.h>

static int hello_init(void) {
    printk(KERN_ALERT "TEST: hello world\n");


    return 0;
}

static void hello_exit(void) {
    printk(KERN_ALERT "TEST: good byte\n");
}

module_init(hello_init);
module_exit(hello_exit);