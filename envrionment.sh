#!/usr/bin/env bash

OIIO_ROOT=/mnt/work/software/develop/dependences/oiio
OPTIX_ROOT=/home/xukai/NVIDIA-OptiX-SDK-5.1.1-linux64
CUDA_ROOT=/usr/local/cuda
BOOST_ROOT=/mnt/work/software/develop/dependences/boost_159
OPEXEXR_ROOT=/mnt/work/software/develop/dependences/open_exr

export LD_LIBRARY_PATH=${OIIO_ROOT}/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${OPTIX_ROOT}/bin:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${OPTIX_ROOT}/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${CUDA_ROOT}/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${BOOST_ROOT}/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${OPEXEXR_ROOT}/lib:$LD_LIBRARY_PATH