#!/usr/bin/env bash
set -euxo pipefail

docker build . --tag carlosgalvezp/udacity_intel_edge:latest
