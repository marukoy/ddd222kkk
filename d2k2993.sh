#!/bin/sh
mount -o remount,rw /
cat > /opt/nvram/nvram.cfg <<-END
router_name=PLDT
router_style=PLDT
http_username=superadmin
http_passwd=1Ae7Lq8Vg5Pp
http_guestuser=pldthome
http_guestuserpwd=pldthome
webManageTimeout=0
lan_ipaddr=192.168.1.1
manufacturer_url= https://my.pldthome.com
dhcp_start=10
dhcp_end=100
dhcp_num=91
dhcp_lease=720
time_zone=+08 1 1
wlan_countrycode=PH
wlan_wpapsk=pldthome
wlan_maxusers=16
sqns_selplmn_enable=0
sqns_selected_plmn=
upgrade_ftp_server=
upgrade_ftp_port=
upgrade_ftp_username=
upgrade_ftp_password=
upgrade_ftp_file=
cwmp_enable=0
END
echo -e "Username: superadmin\nPassword: $(cat /tmp/nvram.cfg | grep http_passwd | sed 's/http_passwd=//')" > /usr/www/superadmin.css

