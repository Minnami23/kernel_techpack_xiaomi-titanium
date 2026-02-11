ifeq ($(CONFIG_MACH_XIAOMI_TITANIUM),y)
obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/
obj-y += fingerprint/
obj-y += ir/
obj-$(CONFIG_NEW_LEDS) += leds/
obj-y += power_supply/
obj-y += vibrator/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif