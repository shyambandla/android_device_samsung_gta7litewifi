#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    install-recovery.sh \
    init.insmod.sh \

PRODUCT_PACKAGES += \
    fstab.ramplus \
    factory_init.rc \
    init_connectivity.rc \
    init.ago.rc \
    multi_init.rc \
    factory_init.connectivity.common.rc \
    factory_init.connectivity.rc \
    init.aee.rc \
    init.connectivity.common.rc \
    meta_init.project.rc \
    meta_init.connectivity.rc \
    meta_init.rc \
    init.mt8768.rc \
    init.mt6765.usb.rc \
    init.connectivity.rc \
    meta_init.connectivity.common.rc \
    init.sensor_1_0.rc \
    init.project.rc \
    init.cgroup.rc \
    factory_init.project.rc \
    init.mt6765.rc \
    init.recovery.samsung.rc \
    init.recovery.mt6765.rc \
    init.recovery.mt8768.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ramplus:$(TARGET_COPY_OUT_RAMDISK)/fstab.ramplus

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/gta7litewifi/gta7litewifi-vendor.mk)
