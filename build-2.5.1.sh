wget https://swupdate.openvpn.org/community/releases/openvpn-2.5.1.tar.gz
tar -zxvf openvpn-2.5.1.tar.gz
cd openvpn-2.5.1
patch -p1 < ../openvpn-v2.5.1-aws.patch
./configure --prefix=/opt/awsvpnclient-ovpn2.5.1
make
sudo make install
sudo libtool --finish /opt/awsvpnclient-ovpn2.5.1/lib/openvpn/plugins
