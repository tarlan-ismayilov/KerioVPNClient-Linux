


menu() {
get-status(){
vpn_ip=$(ifconfig kvnet | egrep -o 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d' ' -f2)
gl_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
pgrep -i kvpncsvc > /tmp/kvpn.status

status=$(sed -n "1 p" /tmp/kvpn.status)

echo > /tmp/kvpn.status
}
get-status

show_gl_ip(){ 
##printf "\n" 
if [[ -z "$gl_ip"  ]]; then
printf " \e[1;91m                            Check Internet Connection \e[25;91m \e[0m\n "
else
printf "\e[1;93m                    		 Your global IP is:\e[1;92m ${gl_ip}     		     \e[0m\n" 
#printf "\e[1;92m  " 
  


fi
   }


touch 1 2 3 4 5 6 7 8 9 10   
sudo chmod 666 1 2 3 4 5 6 7 8 9 10   
ip1=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 1)
ip2=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 2)
ip3=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 3)
ip4=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 4)
ip5=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 5)
ip6=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 6)
ip7=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 7)
ip8=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 8)
ip9=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 9)
ip10=$(grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" 10)

cname=$(sed -n "1 p" /tmp/kvpn.tmp)
name1=$(sed -n "1 p" names.db)
name2=$(sed -n "2 p" names.db)
name3=$(sed -n "3 p" names.db)
name4=$(sed -n "4 p" names.db)
name5=$(sed -n "5 p" names.db)
name6=$(sed -n "6 p" names.db)
name7=$(sed -n "7 p" names.db)
name8=$(sed -n "8 p" names.db)
name9=$(sed -n "9 p" names.db)
name10=$(sed -n "10 p" names.db)




show-status(){
#get-status

if [[ -z "$status"  ]]; then
printf " \e[1;91m                           DISCONNECTED \e[25;91m \n "

elif [[ -z "$vpn_ip"  ]]; then
printf " \e[1;91m                           Reconnecting ... \e[25;91m \n "
get-status
if [[ -z "$vpn_ip"  ]]; then
printf " \e[1;91m      Server not Responding  press [r] for restart service \e[25;91m \n "
fi

else

cname=$(sed -n "1 p" /tmp/kvpn.tmp)

vpn_ip=$(ifconfig kvnet | egrep -o 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d' ' -f2)

printf " \e[1;92m         CONNECTED to \e[1;91m${cname} \e[1;92mVPN local IP: \e[1;93m${vpn_ip}\e[0m\n \e[25;91m "

fi
}










#printf "\n"  
printf "            \e[1;91m     <<<  Welcome to Kerio VPN Client By Tarlan >>> " 

show_gl_ip
show-status

string=$choice
printf "\n"                                                              
printf "\e[1;92m [\e[0m\e[1;93m1\e[0m\e[1;92m]  >>\e[1;91m    ${ip1}  	\e[1;93m${name1}\e[0m\n "                  
printf "\e[1;92m[\e[0m\e[1;93m2\e[0m\e[1;92m]  >>\e[1;91m    ${ip2}  	\e[1;93m${name2}\e[0m\n "                   
printf "\e[1;92m[\e[0m\e[1;93m3\e[0m\e[1;92m]  >>\e[1;91m    ${ip3}  	\e[1;93m${name3}\e[0m\n "                   
printf "\e[1;92m[\e[0m\e[1;93m4\e[0m\e[1;92m]  >>\e[1;91m    ${ip4}  	\e[1;93m${name4}\e[0m\n "                  
printf "\e[1;92m[\e[0m\e[1;93m5\e[0m\e[1;92m]  >>\e[1;91m    ${ip5}  	\e[1;93m${name5}\e[0m\n "                 
printf "\e[1;92m[\e[0m\e[1;93m6\e[0m\e[1;92m]  >>\e[1;91m    ${ip6}  	\e[1;93m${name6}\e[0m\n "                  
printf "\e[1;92m[\e[0m\e[1;93m7\e[0m\e[1;92m]  >>\e[1;91m    ${ip7}  	\e[1;93m${name7}\e[0m\n " 
printf "\e[1;92m[\e[0m\e[1;93m8\e[0m\e[1;92m]  >>\e[1;91m    ${ip8}  	\e[1;93m${name8}\e[0m\n "
printf "\e[1;92m[\e[0m\e[1;93m9\e[0m\e[1;92m]  >>\e[1;91m    ${ip9}  	\e[1;93m${name9}\e[0m\n "
printf "\e[1;92m[\e[0m\e[1;93m10\e[0m\e[1;92m] >>\e[1;91m    ${ip10}    \e[1;93m${name10}\e[0m\n"
#printf "\e[1;92m [\e[0m\e[1;96mi\e[0m\e[1;92m]\e[1;92m  Show VPN Ip Info\e[0m\n"
printf "\e[1;92m [\e[0m\e[1;96mc\e[0m\e[1;92m]\e[1;92m  Configure Kerio VPN Connection\e[0m\n"
printf "\e[1;92m [\e[0m\e[1;96me\e[0m\e[1;92m]\e[1;92m  Edit VPN Name \e[0m\n"
printf "\e[1;92m [\e[0m\e[1;91md\e[0m\e[1;92m]\e[1;91m  Disconnect\e[0m\n"
printf "\e[1;92m [\e[0m\e[1;91mq\e[0m\e[1;92m]\e[1;91m  Quit\e[0m\n"

#printf "\n"
read -p $'\e[1;92m[*] Choose an option : \e[0m' choice


if [[ $choice == "1" ]]; then

sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 1  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name1 > /tmp/kvpn.tmp
menu


elif [[ $choice == "2" ]]; then

sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 2  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name2 > /tmp/kvpn.tmp
menu


elif [[ $choice == "3" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 3  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name3 > /tmp/kvpn.tmp
menu


elif [[ $choice == "4" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 4 /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name4 > /tmp/kvpn.tmp
menu



elif [[ $choice == "5" ]]; then

sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 5  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name5 > /tmp/kvpn.tmp
menu



elif [[ $choice == "6" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 6  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name6 > /tmp/kvpn.tmp
menu



elif [[ $choice == "7" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 7  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name7 > /tmp/kvpn.tmp
menu




elif [[ $choice == "8" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 8  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name8 > /tmp/kvpn.tmp
menu



elif [[ $choice == "9" ]]; then

sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 9  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5

echo $name9 > /tmp/kvpn.tmp
get-status
menu


elif [[ $choice == "10" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 10  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
echo $name10 > /tmp/kvpn.tmp
menu


elif [[ $choice == "r" ]]; then
sudo /etc/init.d/kerio-kvc stop

sudo /etc/init.d/kerio-kvc reload
sudo /etc/init.d/kerio-kvc start
sleep 5
get-status
bash kvpn.sh
elif [[ $choice == "c" ]]; then
sudo service kerio-kvc stop
sudo /etc/init.d/kerio-kvc stop
get-status
sudo dpkg-reconfigure kerio-control-vpnclient
savemenu
elif [[ $choice == "e" ]]; then
editmenu
elif [[ $choice == "d" ]]; then
sudo service kerio-kvc stop
sudo /etc/init.d/kerio-kvc stop
get-status
menu

 

elif [[ $choice == "s" ]]; then
savemenu
elif [[ $choice == "i" ]]; then
ifconfig kvnet |grep 'inet '
elif [[ $choice == "q" ]]; then
exit
else

printf "\n\e[1;43m[!] Invalid option!\e[0m\n\n"
menu
fi
}





savemenu(){
 read -p $'\e[1;92m[*] Save to VPN number: \e[0m' choice
 
 
 
 
 if [[ $choice == "1" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "1s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp

bash kvpn.sh


elif [[ $choice == "2" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "2s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp

bash kvpn.sh


elif [[ $choice == "3" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "3s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh


elif [[ $choice == "4" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "4s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh


elif [[ $choice == "5" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "5s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh


elif [[ $choice == "6" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "6s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh


elif [[ $choice == "7" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "7s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh



elif [[ $choice == "8" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "8s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh


elif [[ $choice == "9" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "9s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh

elif [[ $choice == "10" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "10s/.*$/${name}/" names.db
echo $name > /tmp/kvpn.tmp
bash kvpn.sh

elif [[ $choice == "q" ]]; then
exit

else

printf "\n\e[1;43m[!] Invalid option!\e[0m\n\n"
savemenu
fi
}


editmenu(){
read -p $'\e[1;92m[*] Choose VPN number to edit name : \e[0m' choice

readname(){
read -p $'\e[1;92m[*] Input new Name : \e[0m' name




}
if [[ $choice == "1" ]]; then

readname

sed -i "1s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "2" ]]; then

readname

sed -i "2s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "3" ]]; then

readname

sed -i "3s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "4" ]]; then

readname

sed -i "4s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "5" ]]; then

readname

sed -i "5s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "6" ]]; then

readname

sed -i "6s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "7" ]]; then

readname

sed -i "7s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "8" ]]; then

readname

sed -i "8s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "9" ]]; then

readname

sed -i "9s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "10" ]]; then

readname

sed -i "10s/.*$/${name}/" names.db

bash kvpn.sh



elif [[ $choice == "10" ]]; then

exit 

else

printf "\n\e[1;43m[!] Input Name !\e[0m\n\n"
editmenu
fi
}




 
 


menu
$SHELL
