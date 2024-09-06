#!/usr/bin/env bash
set -xeuo pipefail

# Downloads a ~1.2GB` IMDB dataset in zipped format.

cd "${BASH_SOURCE%/*}"
curl -LO https://cdn.sdf.com/data/tpch/tpch_pd_scale_10.zip
unzip tpch_pd_scale_10.zip
