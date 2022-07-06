####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 10                                              #
####################################################################

BASE_SDK_PATH = /Users/leder/SimplicityStudio/SDKs/gecko_sdk
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.1.0

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/driver/button/inc \
 -I$(SDK_PATH)/platform/service/cli/inc \
 -I$(SDK_PATH)/platform/service/cli/src \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(SDK_PATH)/platform/driver/i2cspm/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/hardware/driver/si70xx/inc \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o: $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
	@echo 'Building $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o: $(SDK_PATH)/platform/driver/button/src/sl_button.c
	@echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_button.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o: $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
	@echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o

$(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o: $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
	@echo 'Building $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_pwm_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_pwm_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_pwm_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_pwm_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_pwm_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_pwm_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o: $(SDK_PATH)/platform/emlib/src/em_i2c.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_i2c.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_i2c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(SDK_PATH)/platform/service/cli/src/sl_cli.c
	@echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/project/app.o: app.c
	@echo 'Building app.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@echo 'Building autogen/sl_board_default_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@echo 'Building autogen/sl_cli_command_table.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@echo 'Building autogen/sl_cli_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@echo 'Building autogen/sl_device_init_clocks.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@echo 'Building autogen/sl_event_handler.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_i2cspm_init.o: autogen/sl_i2cspm_init.c
	@echo 'Building autogen/sl_i2cspm_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_i2cspm_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_i2cspm_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_i2cspm_init.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@echo 'Building autogen/sl_iostream_handles.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.o: autogen/sl_simple_button_instances.c
	@echo 'Building autogen/sl_simple_button_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_button_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o: autogen/sl_simple_led_instances.c
	@echo 'Building autogen/sl_simple_led_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_rgb_pwm_led_instances.o: autogen/sl_simple_rgb_pwm_led_instances.c
	@echo 'Building autogen/sl_simple_rgb_pwm_led_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_rgb_pwm_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgb_pwm_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgb_pwm_led_instances.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@echo 'Building autogen/sli_cli_hooks.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/cli.o: cli.c
	@echo 'Building cli.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ cli.c
CDEPS += $(OUTPUT_DIR)/project/cli.d
OBJS += $(OUTPUT_DIR)/project/cli.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA