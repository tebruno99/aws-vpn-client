wget https://swupdate.openvpn.org/community/releases/openvpn-2.4.11.tar.gz
tar -zxvf openvpn-2.4.11.tar.gz
cd openvpn-2.4.11
patch -p1 < ../openvpn-v2.4.9-aws.patch
./configure --prefix=/opt/awsvpnclient-ovpn2.4.11
make
sudo make install
sudo libtool --finish /opt/awsvpnclient-ovpn2.4.11/lib/openvpn/plugins
