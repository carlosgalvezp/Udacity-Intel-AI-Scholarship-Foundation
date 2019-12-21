#!/usr/bin/env bash
set -euxo pipefail

/opt/intel/openvino/deployment_tools/tools/model_downloader/downloader.py \
    --name human-pose-estimation-0001

/opt/intel/openvino/deployment_tools/tools/model_downloader/downloader.py \
    --name text-detection-0004 --precisions FP16

/opt/intel/openvino/deployment_tools/tools/model_downloader/downloader.py \
    --name vehicle-attributes-recognition-barrier-0039 --precisions INT8
