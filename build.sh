#!/bin/sh

sudo apt install -y gcc-arm-none-eabi

PREV_DIR=$(pwd)

# get Nordic SDK, if it is not there
cd nRF5_SDK_17.1.0_ddde560/examples/ble_peripheral/ble_app_hids_keyboard/pca10040e/s112/armgcc || \
 wget https://nsscprodmedia.blob.core.windows.net/prod/software-and-other-downloads/sdks/nrf5/binaries/nrf5_sdk_17.1.0_ddde560.zip && \
 unzip nrf5_sdk_17.1.0_ddde560.zip && rm nrf5_sdk_17.1.0_ddde560.zip && rm nrf5_sdk_17.1.0_ddde560.zip
 
# patch nRF5_SDK_17.1.0_ddde560/examples/ble_peripheral/ble_app_hids_keyboard
# set values in Makefile.posix according to the actual configuration of your system
cd $PREV_DIR
cp Makefile.posix nRF5_SDK_17.1.0_ddde560/components/toolchain/gcc/Makefile.posix
cp main.c nRF5_SDK_17.1.0_ddde560/examples/ble_peripheral/ble_app_hids_keyboard/main.c
cp bsp.c nRF5_SDK_17.1.0_ddde560/components/libraries/bsp/bsp.c
cp bsp.h nRF5_SDK_17.1.0_ddde560/components/libraries/bsp/bsp.h
cp pca10040_freemote.h nRF5_SDK_17.1.0_ddde560/components/boards/pca10040.h
cp bsp_btn_ble.c nRF5_SDK_17.1.0_ddde560/components/libraries/bsp/bsp_btn_ble.c
cp bsp_config.h nRF5_SDK_17.1.0_ddde560/components/libraries/bsp/bsp_config.h
cp sdk_config.h nRF5_SDK_17.1.0_ddde560/examples/ble_peripheral/ble_app_hids_keyboard/pca10040e/s112/config/sdk_config.h

cd nRF5_SDK_17.1.0_ddde560/examples/ble_peripheral/ble_app_hids_keyboard/pca10040e/s112/armgcc
make
