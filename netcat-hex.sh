#!/bin/bash

# HEX Banner
clear
echo -e "\e[92m"
echo "██╗  ██╗███████╗██╗  ██╗          ██╗   ██╗███████╗███╗   ██╗ █████╗  ██████╗"
echo "██║  ██║██╔════╝╚██╗██╔╝          ██║   ██║██╔════╝████╗  ██║██╔══██╗██╔════╝"
echo "███████║█████╗   ╚███╔╝           ██║   ██║█████╗  ██╔██╗ ██║███████║██║  ███╗"
echo "██╔══██║██╔══╝   ██╔██╗           ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║██╔══██║██║   ██║"
echo "██║  ██║███████╗██╔╝ ██╗           ╚████╔╝ ███████╗██║ ╚████║██║  ██║╚██████╔╝"
echo "╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝            ╚═══╝  ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ "
echo -e "\e[91m             H E X   -   N E T C A T   T O O L"
echo -e "\e[0m         -------------------------------------------"

# Menu
echo ""
echo "1. Port Scan"
echo "2. Banner Grab"
echo "3. Chat System"
echo "4. File Transfer"
echo "0. exit"
read -p $'\nChoose an option: ' opt

case $opt in
  1)
    read -p "Enter IP: " ip
    read -p "Port Range (e.g., 20-80): " range
    echo "Scanning..."
    nc -zv $ip $range
    ;;
  2)
    read -p "Enter IP: " ip
    read -p "Enter Port: " port
    echo "Grabbing banner..."
    nc $ip $port
    ;;
  3)
    echo "1. Start Chat Server"
    echo "2. Connect to Chat"
    read -p "Choose: " chatOpt
    if [ $chatOpt -eq 1 ]; then
      read -p "Port: " port
      nc -lvp $port
    else
      read -p "Enter IP: " ip
      read -p "Port: " port
      nc $ip $port
    fi
    ;;
  4)
    echo "1. Send File"
    echo "2. Receive File"
    read -p "Choose: " fopt
    if [ $fopt -eq 1 ]; then
      read -p "Enter IP: " ip
      read -p "Port: " port
      read -p "File Path: " file
      cat $file | nc $ip $port
    else
      read -p "Port to Listen: " port
      read -p "Save As (filename): " fname
      nc -lvp $port > $fname
    fi
    ;;
  0)
    echo "Exiting..."
    ;;
  *)
    echo "Invalid option!"
    ;;
esac
