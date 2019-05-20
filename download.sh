yes | apt-get update
sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
git clone https://github.com/hyc/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make
