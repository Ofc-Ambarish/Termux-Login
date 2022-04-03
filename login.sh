#!/usr/bin/bash 

bash banner.sh
echo

read -p $'\e[1;32m  Enter \033[33mUsername \033[37mfor \033[32mSignUp :\e[0m ' username                
read -p $'\e[1;32m  Enter \033[33mPassword \033[37mfor \033[32mSignUp :\e[0m ' password 
echo
echo
read -p $'\033[1m\033[32m   Your \033[0mNick \033[38;5;209mName \033[31m  : \033[33m\033[1m ' names
cd                                                   
cd ..                                               
cd usr/etc                                       
rm motd                                           
rm bash.bashrc                                       
cat <<LOGIN>bash.bashrc                            
trap '' 2                                          
echo -e "\e[1;32m
            ──▄▀▀▀▄───────────────
           \033[33mPlease Login To Continue\033[32m
            ──█───█───────────────
            ─███████─────────▄▀▀▄─
            ░██─▀─██░░█▀█▀▀▀▀█░░█░
            ░███▄███░░▀░▀░░░░░▀▀░░
\033[31m           ────────────────────────────
\033[33m           Login With Your \033[32mCredentials 
\033[31m           ────────────────────────────
\e[0m"
echo
read -p $'       \e[33m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mUSERNAME :\033[32m ' user
read -s -p $'       \e[32m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mPASSWORD :\033[33m ' pass                                                
if [[ \$pass == $password && \$user == $username ]]; then
sleep 3
clear
