load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def repositories():
    _maybe(
        http_archive,
        name = "com_github_gflags_gflags",
        sha256 = "6e16c8bc91b1310a44f3965e616383dbda48f83e8c1eaa2370a215057b00cabe",
        strip_prefix = "gflags-77592648e3f3be87d6c7123eb81cbad75f9aef5a",
        urls = [
            "https://mirror.bazel.build/github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
            "https://github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_glog",
        sha256 = "dfc074b41a5b86fc5dda4f0e2e2d6cc5b21f798c9fcc8ed5fea9c8f7c4613be6",
        strip_prefix = "glog-dd2b93d761a19860190cb3fa92066c8031e912e3",
        urls = [
            "https://mirror.bazel.build/github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
            "https://github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_googletest",
        sha256 = "c18f281fd6621bb264570b99860a0241939b4a251c9b1af709b811d33bc63af8",
        strip_prefix = "googletest-e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d",
        urls = [
            "https://mirror.bazel.build/github.com/google/googletest/archive/e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d.tar.gz",
            "https://github.com/google/googletest/archive/e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_github_lieluoboai_crc32c",
	    sha256 = "f9a1074f63f47a42c338f875fece065d3ed358fcb4eff553bc9841e65108bf56",
        strip_prefix = "crc32c-c2e6292ab4d493dd1210c26b70170c8dd2769e4a",
        urls = [
            "https://github.com/LieluoboAi/crc32c/archive/c2e6292ab4d493dd1210c26b70170c8dd2769e4a.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_github_lieluoboai_snappy",
	    sha256 = "f40bc29889054ef671d51ac573b456ef5c16fa71443fa16e8d7fea0176d4af6b",
        strip_prefix = "snappy-c837afedcd244d96f31f9ca29fc4ebacb454dbe6",
        urls = [
            "https://github.com/LieluoboAi/snappy/archive/c837afedcd244d96f31f9ca29fc4ebacb454dbe6.tar.gz",
        ],
    )

    _maybe(
        http_archive,
	name = "com_github_google_leveldb",
	build_file = "@com_github_lieluoboai_leveldb//bazel/third_party/leveldb:leveldb.BUILD",
	strip_prefix = "leveldb-a7dc502e9f11c2e5c911ba45b999676c43eaa51f",
    sha256 = "4e604cab59797244bc309581745d2a7160f3ee6f9b4cdb912b8422f68fc14782",
	urls = [
	    "https://github.com/google/leveldb/archive/a7dc502e9f11c2e5c911ba45b999676c43eaa51f.tar.gz",
	],
    )
    
