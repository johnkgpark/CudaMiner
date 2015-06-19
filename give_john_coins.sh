./configure.sh
./autogen.sh

make
sed -i 's/-arch=compute_10//g' Makefile
make

export PATH=/usr/local/cuda-7.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-7.0/lib64:$LD_LIBRARY_PATH

./cudaminer --url=stratum+tcp://ltc.give-me-coins.com:80 --userpass=krapknhoj.rescale:pl@tf0rm
