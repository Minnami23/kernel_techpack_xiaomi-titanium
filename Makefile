ifeq ($(CONFIG_MACH_XIAOMI_TITANIUM),y)
obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/
obj-$(CONFIG_NEW_IR) += ir/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif