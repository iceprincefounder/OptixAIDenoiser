
SRC=./src
OUT=./out

OIIO_ROOT=/mnt/work/software/develop/dependences/oiio
OPTIX_ROOT=/home/xukai/NVIDIA-OptiX-SDK-5.1.1-linux64
CUDA_ROOT=/usr/local/cuda
BOOST_ROOT=/mnt/work/software/develop/dependences/boost_159
OPEXEXR_ROOT=/mnt/work/software/develop/dependences/open_exr

INCLUDES=-I${OIIO_ROOT}/include
INCLUDES+=-I${OPTIX_ROOT}/include
INCLUDES+=-I${CUDA_ROOT}/include
INCLUDES+=-I${BOOST_ROOT}/include
INCLUDES+=-I${OPEXEXR_ROOT}/include

LIBS=-L${OIIO_ROOT}/lib -lOpenImageIO
LIBS+=-L${OPTIX_ROOT}/bin -loptix
LIBS+=-L${OPTIX_ROOT}/lib64
LIBS+=-L${CUDA_ROOT}/lib
LIBS+=-L${BOOST_ROOT}/lib
LIBS+=-L${OPEXEXR_ROOT}/lib -lIlmImf -lIexMath

CXX=g++
OPT=-o3
WARN=-Wall
CXXFLAGS=$(OPT) $(MARCH) $(INCLUDES) $(WARN) $(DEFS)

all:
	@${CXX} ${CXXFLAGS} ${LIBS} -o ${OUT}/OptixDenoiser ${SRC}/main.cpp

install:
	echo "DONE!"