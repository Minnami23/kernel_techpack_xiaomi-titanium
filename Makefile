ifeq ($(CONFIG_MACH_XIAOMI_TITANIUM),y)
obj-y += pmic/
obj-y += power_supply/
obj-y += vibrator/
obj-y += fingerprint/
obj-y += ir/
obj-$(CONFIG_NEW_LEDS) += leds/
obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif