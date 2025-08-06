vcpkg_check_linkage(ONLY_STATIC_LIBRARY)
vcpkg_minimum_required(VERSION 2022-10-12) # for ${VERSION}

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO cgg-bern/lemon
    REF 38998d7791a2aff93017ce757297c3ab24ad0e39
    SHA512 93cf2312ca9c48f0c1f8cd8e7d736d60d3601e87b5ea86f7071093f618ad2b536fd57973359c10b0903506062b0506b5319372602ef41ab5d3523845de02ec00
    PATCHES
        "cgg_bern.patch"
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
#    OPTIONS
#        -DCPP_TARGETS=cpp
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()

#vcpkg_cmake_config_fixup(CONFIG_PATH cmake)
