# Change pool configuration for one mining machine
# Prerequisite: expect
# Parameters: 
# $1: rig_ip,		$2: rig_id,		$3: ssh_user,		$4: ssh_password, 
# $5: pool_account, $6: pool_url,	$7: pool_password,	$8: pool_splitor 

STRATUM_URL="stratum+tcp:\\\\/\\\\/$6"

echo ---------------------------------------------------------------
echo IP: $1, Rig: $2
echo ---------------------------------------------------------------
expect -c "
set timeout 30;
spawn ssh $3@$1
expect \"*yes/no*\" {send \"yes\n\"; exp_continue}
expect \"*assword:\" {send \"$4\n\";}
expect \"OpenWrt*\" {send \"sed -i 's/grin32_pool1user.*$/grin32_pool1user $5$8$2/g' /etc/config/cgminer \n\"; } 
expect \"OpenWrt*\" {send \"sed -i 's/grin32_pool1url.*$/grin32_pool1url $STRATUM_URL/g' /etc/config/cgminer \n\"; } 
expect \"OpenWrt*\" {send \"sed -i 's/grin32_pool1pw.*$/grin32_pool1pw $7/g' /etc/config/cgminer \n\"; } 
expect \"\[root*\" {send \"exit\n\"; } 
expect eof;"