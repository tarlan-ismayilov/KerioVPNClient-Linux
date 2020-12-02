





show_gl_ip(){
printf "\n" 
printf "\e[1;93m                     Your global IP is: " 
printf "\e[1;92m  " 
   dig +short myip.opendns.com @resolver1.opendns.com
printf "\e[0m \n "
   }



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

menu() {
printf "\n"  
printf "            \e[1;91m     <<<  Welcome to Kerio VPN Client By Tarlan >>> " 
show_gl_ip

string=$choice
                                                                  
printf "\e[1;92m[\e[0m\e[1;93m1\e[0m\e[1;92m]  >>\e[1;93m   ${name1}\e[0m\n "                  
printf "\e[1;92m[\e[0m\e[1;93m2\e[0m\e[1;92m]  >>\e[1;93m   ${name2}\e[0m\n "                   
printf "\e[1;92m[\e[0m\e[1;93m3\e[0m\e[1;92m]  >>\e[1;93m   ${name3}\e[0m\n "                   
printf "\e[1;92m[\e[0m\e[1;93m4\e[0m\e[1;92m]  >>\e[1;93m   ${name4}\e[0m\n "                  
printf "\e[1;92m[\e[0m\e[1;93m5\e[0m\e[1;92m]  >>\e[1;93m   ${name5}\e[0m\n "                 
printf "\e[1;92m[\e[0m\e[1;93m6\e[0m\e[1;92m]  >>\e[1;93m   ${name6}\e[0m\n "                  
printf "\e[1;92m[\e[0m\e[1;93m7\e[0m\e[1;92m]  >>\e[1;93m   ${name7}\e[0m\n " 
printf "\e[1;92m[\e[0m\e[1;93m8\e[0m\e[1;92m]  >>\e[1;93m   ${name8}\e[0m\n "
printf "\e[1;92m[\e[0m\e[1;93m9\e[0m\e[1;92m]  >>\e[1;93m   ${name9}\e[0m\n "
printf "\e[1;92m[\e[0m\e[1;93m10\e[0m\e[1;92m] >>\e[1;93m   ${name10}\e[0m\n"
printf "\e[1;92m [\e[0m\e[1;96mi\e[0m\e[1;92m]\e[1;92m  Show VPN Ip Info\e[0m\n"
printf "\e[1;92m [\e[0m\e[1;96mc\e[0m\e[1;92m]\e[1;92m  Configure Kerio VPN Connection\e[0m\n"
printf "\e[1;92m [\e[0m\e[1;96me\e[0m\e[1;92m]\e[1;92m  Edit VPN Name \e[0m\n"
printf "\e[1;92m [\e[0m\e[1;91md\e[0m\e[1;92m]\e[1;91m  Disconnect\e[0m\n"
printf "\e[1;92m [\e[0m\e[1;91mq\e[0m\e[1;92m]\e[1;91m  Quit\e[0m\n"

printf "\n"
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
show_gl_ip
ifconfig kvnet


elif [[ $choice == "2" ]]; then

sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 2  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet

elif [[ $choice == "3" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 3  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet

elif [[ $choice == "4" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 4 /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet

elif [[ $choice == "5" ]]; then

sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 5  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet



elif [[ $choice == "6" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 6  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet

elif [[ $choice == "7" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 7  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet
elif [[ $choice == "8" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 8  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet

elif [[ $choice == "9" ]]; then

sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 9  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet
elif [[ $choice == "10" ]]; then
sudo /etc/init.d/kerio-kvc stop
sleep 1
sudo cp 10  /etc/kerio-kvc.conf
sleep 1
sudo /etc/init.d/kerio-kvc reload
sleep 1
sudo /etc/init.d/kerio-kvc start
sleep 5
show_gl_ip
ifconfig kvnet



elif [[ $choice == "p" ]]; then
ping 8.8.8.8
elif [[ $choice == "c" ]]; then
sudo dpkg-reconfigure kerio-control-vpnclient
savemenu
elif [[ $choice == "e" ]]; then
editmenu
elif [[ $choice == "d" ]]; then
sudo service kerio-kvc stop
sudo /etc/init.d/kerio-kvc stop

printf " \e[1;5;91m                           DISCONNECTED \e[25;91m \n"
 
show_gl_ip

elif [[ $choice == "s" ]]; then
savemenu
elif [[ $choice == "i" ]]; then
ifconfig kvnet
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

bash kvpn.sh


elif [[ $choice == "2" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "2s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "3" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "3s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "4" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "4s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "5" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "5s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "6" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "6s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "7" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "7s/.*$/${name}/" names.db

bash kvpn.sh



elif [[ $choice == "8" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "8s/.*$/${name}/" names.db

bash kvpn.sh


elif [[ $choice == "9" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "9s/.*$/${name}/" names.db

bash kvpn.sh

elif [[ $choice == "10" ]]; then
 
string=$choice

sleep 1

sudo cp   /etc/kerio-kvc.conf  ${string}
read -p $'\e[1;92m[*] Input Name for VPN : \e[0m' name

sed -i "10s/.*$/${name}/" names.db

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

