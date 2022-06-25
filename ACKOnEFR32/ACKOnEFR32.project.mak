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
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
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

$(OUTPUT_DIR)/ack/%.o: %.c
	@echo 'Building $<'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $<
CDEPS += $(patsubst %.c,$(OUTPUT_DIR)/%.d,$(wildcard ack/*.c))
OBJS += $(patsubst %.c,$(OUTPUT_DIR)/%.o,$(wildcard ack/*.c))

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA