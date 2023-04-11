#!/bin/bash

export BZIP2_DIR=$PREFIX
export HDF5_DIR=$PREFIX
export LZO_DIR=$PREFIX
export BLOSC_DIR=$PREFIX
export BLOSC2_DIR=$PREFIX
export COPY_DLLS=FALSE
export BLOSC2_LIBDIR=$PREFIX/lib
export BLOSC2_INCDIR=$PREFIX/include
export PYTABLES_NO_BLOSC2_WHEEL

# Remove the pre-cythonized files which may not be compatible.
rm -f tables/*.c

$PYTHON -m pip install --no-deps --no-cache-dir --ignore-installed .
