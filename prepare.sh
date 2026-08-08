#!/bin/bash


#export ZEPHYR_SDK_INSTALL_DIR=/home/saiba/zephyr-sdk-0.16.9
export ZEPHYR_TOOLCHAIN_VARIANT="zephyr"
source venv/bin/activate
cd zmk/app
west build -p -b nice_nano_v2 -- -DSHIELD=charybdis3m_right -DZMK_CONFIG=../../config
west build -p -b nice_nano_v2 -- -DSHIELD=charybdis3m_left -DZMK_CONFIG=../../config
