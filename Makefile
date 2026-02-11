ifeq ($(CONFIG_MACH_XIAOMI_TITANIUM),y)
obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/
obj-$(CONFIG_INPUT_FINGERPRINT) += fingerprint/
obj-y += fingerprint/
obj-y += ir/
obj-y += vibrator/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif