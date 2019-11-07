load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/lijianying10/rules_go_pushserver/archive/18fadf5e797941bc5d0f1b00be2ff99352591d41.tar.gz",
        sha256 = "4ec0d602bc7f5be674091ad029bc7e71a5956d24c0bec3f3e1c200fed3fd96fb",
        strip_prefix = "rules_go_pushserver-18fadf5e797941bc5d0f1b00be2ff99352591d41",
    )
