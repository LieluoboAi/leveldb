# Bazel Build for [google/leveldb](https://github.com/google/leveldb)

[![Build Status](https://travis-ci.org/cschuet/leveldb.svg?branch=master)](https://travis-ci.org/cschuet/leveldb)

Add to your WORKSPACE

```
http_archive(
    name = "com_github_lieluoboai_leveldb",
    strip_prefix = "leveldb-3d51bafc1764d7115db5f83b4a838bc6e630449a",
    sha256 = "2c8815db8f1b5031e62d530e13ef31242f85ebcc6c7b486d8897474df482786f",
    urls = [
        "https://github.com/cschuet/leveldb/archive/3d51bafc1764d7115db5f83b4a838bc6e630449a.tar.gz",
    ],
)

load("@com_github_lieluoboai_leveldb//:bazel/repositories.bzl", "repositories")

repositories()

load("@com_github_lieluoboai_snappy//:bazel/repositories.bzl", "repositories")

repositories()

load("@com_github_lieluoboai_crc32c//:bazel/repositories.bzl", "repositories")

repositories()

```

Compile with
```
bazel build @com_github_google_leveldb//:leveldb
```

Test with
```
bazel test @com_github_google_leveldb//...
```

## Limitations
* uses FDATASYNC
* uses [Google Snappy](https://github.com/LieluoboAi/snappy)
* uses [Google crc32c](https://github.com/LieluoboAi/crc32c)
* assumes little endian
