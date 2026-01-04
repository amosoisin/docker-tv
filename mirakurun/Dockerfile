FROM chinachu/mirakurun:latest

RUN apt-get -y update

RUN apt-get -y install \
	autoconf \
	cmake \
	libpcsclite1 \
	libpcsclite-dev \
	pkg-config \
	git \
	automake \
	libtool

# bcas
## libyakisoba
RUN \
git clone --depth=1 https://github.com/tsunoda14/libyakisoba.git /src/libyakisoba && \
cd /src/libyakisoba && \
autoreconf -i && \
mkdir build && \
cd build && \
../configure && \
make && \
make install

## libsobacas
RUN \
git clone --depth=1 https://github.com/tsunoda14/libsobacas.git /src/libsobacas && \
cd /src/libsobacas && \
autoreconf -i && \
mkdir build && \
cd build && \
../configure && \
make && \
make install

# libaribb25
RUN \
git clone --depth=1 https://github.com/tsukumijima/libaribb25.git /src/libaribb25 && \
cd /src/libaribb25 && \
cmake . -B build -DWITH_PCSC_PACKAGE=NO -DWITH_PCSC_LIBRARY=sobacas && \
make -C build && \
make -C build install

# recpt1
run \
git clone https://github.com/stz2012/recpt1.git && \
cd ./recpt1/recpt1 && \
./autogen.sh && \
./configure --enable-b25 && \
make && \
make install

run \
apt-get autoremove -y && \
apt-get clean && \
rm -rf /var/lib/apt/list/* && \
rm -rf /tmp/*

COPY ./bcas_keys /src/libyakisoba/src/bcas_keys
