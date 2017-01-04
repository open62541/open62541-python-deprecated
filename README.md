# open62541-python
Python wrapper for the open62541 OPC UA SDK

#Install


* git clone https://github.com/open62541/open62541.git
* cd open6541
* Set following options in CMakeList.txt
** shared library on (required)
** Generate nodeset???
* mkdir build
* cmake ..
* make
* a new file linopen62541.so.0 should have been generated

* cd ../../
* git clone https://github.com/open62541/open62541-python.git
* cd open62541-python
* python setup.py build
* a new file openua.xxx.so should have been generated, rename it to openua.so 
* export LD_LIBRARY_PATH=../build:$LD_LIBRARY_PATH
* LD_LIBRARY_PATH, PYTHON_PATH or whatever else is necessary for ld and python binary to find the new modules

