git submodule update --init --recursive
python3 tools/amd_build/build_amd.py
MAX_JOBS=128 PYTORCH_ROCM_ARCH=$1 ROCM_PATH=/opt/rocm/ CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"} python3 setup.py install