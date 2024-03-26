git submodule update --init --recursive
python3 tools/amd_build/build_amd.py
PYTORCH_ROCM_ARCH=native ROCM_PATH=/opt/rocm/ CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"} BUILD_TEST=0 python3 setup.py install --user