#!/bin/bash

export ZEPHYR_TOOLCHAIN_VARIANT="zephyr"
python -m venv venv
source venv/bin/activate
pip install west
west init -l config
west update
install -r zephyr/scripts/requirements.txt
#cd zmk/app
#west build -p -b nice_nano_v2 -- -DSHIELD=charybdis3m_right -DZMK_CONFIG=../../config
#west build -p -b nice_nano_v2 -- -DSHIELD=charybdis3m_left -DZMK_CONFIG=../../config
