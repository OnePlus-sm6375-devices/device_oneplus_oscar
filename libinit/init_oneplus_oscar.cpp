/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t oscar_info = {
    .hwc_value = "India",
    .model_value = "OP535DL1",

    .brand = "Oneplus",
    .device = "oscar",
    .marketname = "OnePlus Nord CE2 Lite 5G",
    .model = "CPH2381",
    .name = "oscar",
    .build_fingerprint = "OnePlus/CPH2381/OP535DL1:12/RKQ1.211119.001/S.202208101814:user/release-keys",
};

static const variant_info_t oscar_eu_info = {
    .hwc_value = "EU",
    .model_value = "OP535DL1",

    .brand = "OnePlus",
    .device = "oscar",
    .marketname = "OnePlus Nord CE2 Lite 5G",
    .model = "CPH2309",
    .name = "oscar_eu",
    .build_fingerprint = "TODO",
};

static const std::vector<variant_info_t> variants = {
    oscar_info,
    oscar_eu_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
