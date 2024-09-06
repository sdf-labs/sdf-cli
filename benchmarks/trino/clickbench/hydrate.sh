#!/usr/bin/env bash
set -xeuo pipefail

# Downloads a ~1GB` Clickbench dataset in parquet format.

cd "${BASH_SOURCE%/*}"
curl -LO https://cdn.sdf.com/data/clickbench/hits.parquet