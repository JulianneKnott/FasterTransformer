cd /datadrive/jknott/FasterTransformer
rm -rf build
mkdir -p build
cd build
git submodule init && git submodule update
cmake -DSM=70 -DCMAKE_BUILD_TYPE=Release -DBUILD_PYT=ON -DBUILD_MULTI_GPU=ON ..
make
