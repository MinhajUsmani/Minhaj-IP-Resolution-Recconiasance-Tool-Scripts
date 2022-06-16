echo "WELCOME TO Minhaj IP Resolution Recconiasance Tool-Scripts"
echo
echo
echo "Please Insert Valid Domain"
echo
#i am using www.multinet.com.pk
read min
echo
echo "Sublist3r Command is Running"
echo
sublist3r -d $min -o Domainlist.txt
echo
echo
cat Domainlist.txt
echo
echo "nslookup command is Running"
echo
input="/home/kali/Desktop/Domainlist.txt"
echo
while IFS= read -r mau
do
nslookup $mau >> "/home/kali/Desktop/IPresult.txt"
done < "$input"
echo
echo
echo "Your Result Save in Text File"
