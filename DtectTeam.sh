#!/bin/sh
#variabel
lagi(){
    echo -n '[*] Ingin mengulang[y/n] : ' | lolcat
    read sayang1
    case $sayang1 in
    y)sleep 2
    baner
    menu1
    
    ;;
    
    n)sleep 2
    clear
    exit
    
    ;;
    
    esac
}
baner(){
    sleep 2
    clear
    figlet DTectTeam | lolcat -a -d 10
    sleep 2
    echo '------------------------------------------------' | lolcat -a -d 10
    echo '-                 D-Tect Team                  -' | lolcat
    echo '------------------------------------------------' | lolcat
             date | lolcat
}
menu1(){
    sleep 2
    echo '------------------------------------------------' | lolcat
    echo '-                    Menu                      -' | lolcat
    echo '-  1.MBF                           2.Osif      -' | lolcat
    echo '-  3.Telnet                        4.Track Ip  -' | lolcat
    echo '-  5.Ping                          6.MyIp      -' | lolcat
    echo '-  7.TraceRoute                                -' | lolcat
    echo '------------------------------------------------' | lolcat
    echo ''
    echo -n '[*] Pilih no berapa : ' | lolcat
    read kasur
    case $kasur in
    1)sleep 2
    clear
    echo '[*] Memulai install MBF' | lolcat
    sleep 2
    clear
    pkg install git
    pkg install python
    pkg install python2
    git clone https://github.com/pirmansx/mbf
    ls
    cd mbf
    ls
    python2 MBF.py
    
    ;;
    
    2)sleep 2
    clear
    echo '[*] Menginstall OSIF' | lolcat
    sleep 2
    clear
    pkg install git
    pkg install python2
    pip2 install requests mechanize
    git clone https://github.com/CiKu370/OSIF.git
    ls
    cd OSIF
    pip2 install -r requirements.txt
    python2 osif.py
    
    ;;
    
    3)sleep 2
    clear
    figlet Telnet | lolcat -a -d 10
    sleep 2
    echo ''
    echo -n '[*] Your Ip Address : ' | lolcat
    read bantal
    echo -n '[*] Port : ' | lolcat
    read alas3
    echo '[*] Memulai connection ke' $bantal
    telnet $bantal $alas3
    
    ;;
    
    4)sleep 3
    clear
    figlet TrackIp | lolcat -a -d 10
    echo ''
    echo -n '[*] Ip Address Korban : ' | lolcat
    read kor1
    curl http://ip-api.com/$kor1
    echo '[*] Alamat ip berhasil ditemukan' $nama2 | lolcat
    lagi
    
    ;;
    
    5)sleep 2
    clear
    figlet Ping | lolcat -a -d 10
    echo ''
    echo -n '[*] Your Ip Address : ' | lolcat
    read ciku1
    echo '[*] Memulai ping ke' $ciku1 | lolcat
    sleep 3
    ping $ciku1 | lolcat
    
    ;;
    
    6)sleep 2
    curl ifconfig.me | lolcat
    lagi
    
    ;;
    
    7)sleep 3
    clear
    figlet Trace | lolcat -a -d 10
    echo ''
    echo -n '[*] Your Ip Address : ' | lolcat
    read hp9
    sleep 3
    tracerout $hp9
    lagi
    
    ;;
    
    *)sleep 2
    echo '[*] Ops, sepertinya anda memasukkan keyword yg salah' | lolcat
    sleep 3
    lagi
    
    ;;
    
    esac
}
#menu
sleep 2
clear
sleep 2
echo '[*] Memulai tools' | lolcat
sleep 2
clear
echo -n '[*] Siapa nama kaka : ' | lolcat
read nama2 #mencatat nama
sleep 2
clear
sleep 2
figlet Login | lolcat -a -d 10
sleep 2
echo ''
echo '[*] Selamat datang' $nama2 | lolcat
echo -n '[*] Password : ' | lolcat
read saya
case $saya in
dtectteam)sleep 2
echo '[√] Login berhasil' | lolcat
sleep 2
baner
menu1

;;

*)sleep 2
echo '[*] Login gagal' | lolcat
echo '[!] Sepertinya kamu bukan anggota D-Tect Team' | lolcat
sleep 2
exit

;;

esac