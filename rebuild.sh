cd /datadrive/jknott/FasterTransformer/build
cmake -DSM=70 -DCMAKE_BUILD_TYPE=Release -DBUILD_PYT=ON -DBUILD_MULTI_GPU=ON ..
make
