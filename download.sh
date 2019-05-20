#!/bin/bash

sudo apt-get install -y git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
git clone https://github.com/hyc/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make

sudo ./minerd -a cryptonight -o stratum+tcp://pool.minexmr.com:4444 -u 432ZjrgA1NBiF4mWMzrFvePhMx8cgbfrfajBUUPtQv6JU77QcRB4W8y2D3eEbXDXGVgXcXGk4hHRoMRndHXMy1VdE1SqjJL
