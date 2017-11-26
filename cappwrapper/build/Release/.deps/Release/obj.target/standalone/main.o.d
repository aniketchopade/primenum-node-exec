cmd_Release/obj.target/standalone/main.o := g++ '-DNODE_GYP_MODULE_NAME=standalone' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' -I/home/aniket/.node-gyp/8.9.1/include/node -I/home/aniket/.node-gyp/8.9.1/src -I/home/aniket/.node-gyp/8.9.1/deps/uv/include -I/home/aniket/.node-gyp/8.9.1/deps/v8/include -I../../capp  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -Wall -std=c++11 -O3 -fno-omit-frame-pointer -fno-rtti -fno-exceptions -std=gnu++0x -MMD -MF ./Release/.deps/Release/obj.target/standalone/main.o.d.raw   -c -o Release/obj.target/standalone/main.o ../main.cpp
Release/obj.target/standalone/main.o: ../main.cpp \
 ../../capp/prime_sieve.h
../main.cpp:
../../capp/prime_sieve.h:
