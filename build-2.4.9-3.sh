wget https://swupdate.openvpn.org/community/releases/openvpn-2.4.9.tar.gz
tar -zxvf openvpn-2.4.9.tar.gz
cd openvpn-2.4.9
patch -p1 < ../openvpn-v2.4.5-aws-3.patch
./configure --prefix=/opt/awsvpnclient-ovpn2.4.9-3
make
sudo make install
sudo libtool --finish /opt/awsvpnclient-ovpn2.4.9/lib/openvpn/plugins
