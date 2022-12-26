#!/bin/sh

sudo apt install -y gcc-arm-none-eabi

wget https://nsscprodmedia.blob.core.windows.net/prod/software-and-other-downloads/sdks/nrf5/binaries/nrf5_sdk_17.1.0_ddde560.zip && unzip nrf5_sdk_17.1.0_ddde560.zip && rm nrf5_sdk_17.1.0_ddde560.zip

# current softdevice in SDK
# wget https://nsscprodmedia.blob.core.windows.net/prod/software-and-other-downloads/softdevices/s112/s112nrf52720.zip && unzip s112nrf52720.zip && rm s112nrf52720.zip

