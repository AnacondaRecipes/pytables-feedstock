set BZIP2_DIR=$PREFIX
set HDF5_DIR=$PREFIX
set LZO_DIR=$PREFIX
set BLOSC_DIR=$PREFIX
set BLOSC2_DIR=$PREFIX
set COPY_DLLS=FALSE
set BLOSC2_LIBDIR=$PREFIX/lib
set BLOSC2_INCDIR=$PREFIX/include
set PYTABLES_NO_BLOSC2_WHEEL

%PYTHON% setup.py install --hdf5=%LIBRARY_PREFIX% ^
                          --bzip2=%LIBRARY_PREFIX% ^
                          --lzo=%LIBRARY_PREFIX% ^
                          --blosc=%LIBRARY_PREFIX% ^
                          --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
