#!/usr/bin/env bash

echo "[+] Enable SPI & I2C kernel modules"

# SPI
echo "CONFIG_PACKAGE_kmod-spi-dev=y" >> .config
echo "CONFIG_PACKAGE_kmod-spidev=y" >> .config
echo "CONFIG_PACKAGE_kmod-spi-rockchip=y" >> .config

# I2C
echo "CONFIG_PACKAGE_kmod-i2c-core=y" >> .config
echo "CONFIG_PACKAGE_kmod-i2c-dev=y" >> .config

# tools
echo "CONFIG_PACKAGE_i2c-tools=y" >> .config

# 重新整理配置
make defconfig
