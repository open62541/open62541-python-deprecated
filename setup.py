
from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    ext_modules=cythonize([
        Extension(
            name="open62541",
            sources=["open62541.pyx"],
            include_dirs=["../open62541/include", "../open62541/plugins", "../open62541/build/src_generated/", "../open62541/deps"],
            libraries=["open62541"],
            library_dirs=["../open62541/build"]
        )

    ])
)
