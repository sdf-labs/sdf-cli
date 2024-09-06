#!/usr/bin/env bash
set -xeuo pipefail

# Downloads a ~1.2GB` IMDB dataset in zipped format.

cd "${BASH_SOURCE%/*}"
curl -LO https://cdn.sdf.com/data/imdb/imdb_data.zip
unzip imdb_data.zip
