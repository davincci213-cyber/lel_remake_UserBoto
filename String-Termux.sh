#!/system/xbin/Bash
time=$(date)
blue='\033[34;1m'
green='\033[32;1m'
un='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
gg=$([ ! -e string_session.py ])
HOME='/data/data/com.termux/files/home'
clear
neofetch
echo "\n""\n""\n$green$time"
echo $blue "\n1. Get String File "$green "\n2. Install Kebutuhan "$yellow "\n3. Clear File "$red "\n00. Cancel "

read -p "????????? : " okl


if [ $okl = 1 ] || [ $okl = 01 ]
then
cd $HOME
python -V
if [ ! -e string_session.py ]; then
    echo  "\nDownloading string_session.py\n"
    wget https://raw.githubusercontent.com/meareyou/lel_remake_UserBoto/x-sql-extended/string_session.py

    echo "\nRunning script...\n"
    sleep 1
    python3 string_session.py
else
    echo  "\nstring_session.py detected... \nrunning existing file\n"
    sleep 1
    python3 string_session.py
fi
fi

if [ $okl = 2 ] || [ $okl = 02 ]
then
pkg install python -y
pkg install wget -y
cd $HOME;wget https://raw.githubusercontent.com/meareyou/ezrequ/main/requirements.txt
pip install -r requirements.txt
fi

if [ $okl = 3 ] || [ $okl = 03 ]
then
cd $HOME;rm -rf requirements.txt;rm -rf string_session.py
fi

if [ $okl = 0 ] || [ $okl = 00 ]
then
cd $HOME
clear
fi
