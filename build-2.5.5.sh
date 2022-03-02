CURRENT_PWD=`pwd`

wget https://swupdate.openvpn.org/community/releases/openvpn-2.5.5.tar.gz
tar -zxvf openvpn-2.5.5.tar.gz
cd openvpn-2.5.5
patch -p1 < ../openvpn-v2.5.5-aws-3.patch
./configure --prefix="${CURRENT_PWD}/build"
make
make install
sudo libtool --finish "${CURRENT_PWD}/build/"

