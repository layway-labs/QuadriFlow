load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

all_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

def lemon():
    maybe(
        http_archive,
        name = "lemon",
        build_file_content = all_content,
        url = "http://lemon.cs.elte.hu/pub/sources/lemon-1.3.1.tar.gz",
        sha256 = "71b7c725f4c0b4a8ccb92eb87b208701586cf7a96156ebd821ca3ed855bad3c8",
        strip_prefix = "lemon-1.3.1",
        patches = ["//3rd:lemon.patch"],
    )
