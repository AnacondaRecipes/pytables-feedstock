set BZIP2_DIR=%LIBRARY_PREFIX%
set HDF5_DIR=%LIBRARY_PREFIX%
set LZO_DIR=%LIBRARY_PREFIX%
set BLOSC_DIR=%LIBRARY_PREFIX%
set BLOSC2_DIR=%LIBRARY_PREFIX%
set COPY_DLLS=FALSE
set BLOSC2_LIBDIR=%LIBRARY_LIB%
set BLOSC2_INCDIR=%LIBRARY_INC%
set PYTABLES_NO_BLOSC2_WHEEL=1

%PYTHON% setup.py install --hdf5=%LIBRARY_PREFIX% ^
                          --bzip2=%LIBRARY_PREFIX% ^
                          --lzo=%LIBRARY_PREFIX% ^
                          --blosc=%LIBRARY_PREFIX% ^
                          --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
