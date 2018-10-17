# open62541-python
Python wrapper for the open62541 OPC UA SDK based on Cython.

The wrapper have been implemented for the need of opua-modeler https://github.com/FreeOpcUa/opcua-modeler and are currently limited to the few methods needed by the modeler.

#Install


* git clone https://github.com/open62541/open62541.git
* cd open6541
* git checkout 0.3
* git submodule update
* mkdir build
* cd build
* cmake -DBUILD_SHARED_LIBS=ON -DUA_ENABLE_FULL_NS0=ON ..
* make
* a new file libnopen62541.so.0 should have been generated

* cd ../../
* git clone https://github.com/open62541/open62541-python.git
* cd open62541-python
* python setup.py build_ext --inplace
* a new file openua.xxx.so should have been generated, rename it to open62541.so 
* export LD_LIBRARY_PATH=../build:$LD_LIBRARY_PATH
* LD_LIBRARY_PATH, PYTHON_PATH or whatever else is necessary for ld and python binary to find the new modules

