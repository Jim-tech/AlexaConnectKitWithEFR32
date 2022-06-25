# Porting to EFR32

# Reference

- [https://docs.silabs.com/simplicity-studio-5-users-guide/5.4.0/ss-5-users-guide-overview/](https://docs.silabs.com/simplicity-studio-5-users-guide/5.4.0/ss-5-users-guide-overview/)
- [https://docs.silabs.com/gecko-platform/4.1/service/api/group-iostream](https://docs.silabs.com/gecko-platform/4.1/service/api/group-iostream)

# Prerequisites

- Download and install Simplicity Studio V5.
- Install the latest Gecko SDK which can be done through Simplicity Studio V5 or through github https://github.com/SiliconLabs/gecko_sdk
- Get an EFR32 development kit. [Thunder Board Sense 2](https://www.silabs.com/development-tools/thunderboard/thunderboard-sense-two-kit) is a recommendation.

# Setup Steps

## Create a project for EFR32 with Simplicity Studio

- Create an example based on the sample project Platform - CLI Bare-metal .
- In the Overview page of the opened .slcp GUI, click the button Change Targets/SDK/Generator, then in the CHANGE PROJECT GENERATOR field, check GCC Makefile, then Save, this can help to generate a Makefile based project.
- Add two Simple Button instances.
- Add a Simple RGB PWM LED instance.
- Add Si70xx - Temperature / Humidity Sensor component.
- Add a new instance for the component IO Stream - USART, this will be used to communicate with the ACK module. Set the rx buffer size of this instance.

## Create a project for ACK with VSCode + Arduino extension

- Create a project based on the example SmartLight.
- Go to $HOME/Documents/Arduino/generated_examples to find the created project and copy the whole folder to the project of EFR32.
- Rename the folder name of the ACK project to ack.

## Change the Makefile

- Use Makefile to build. Add the following content to the end of ACKOnEFR32.project.mak

```bash
$(OUTPUT_DIR)/ack/%.o: %.c
	@echo 'Building $<'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $<
CDEPS += $(patsubst %.c,$(OUTPUT_DIR)/%.d,$(wildcard ack/*.c))
OBJS += $(patsubst %.c,$(OUTPUT_DIR)/%.o,$(wildcard ack/*.c))
```