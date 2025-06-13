# 🧠 HEX Netcat Tool 🔥

A powerful **multi-purpose networking toolkit** built on top of the legendary **Netcat**, re-imagined by **HEX ARMY** to work like a beast in your terminal!

> Use it for port scanning, banner grabbing, file transfers, or even a real-time chat system — all from a single Bash script. 💥

---

## 🚀 Features

### 1️⃣ Port Scanner
- Scan open ports of any IP using `nc -zv`
- Useful for network reconnaissance
- Lightweight and fast

```bash
Enter IP: 192.168.1.1
Port Range: 20-80


Banner Grabber
Connects to remote ports and reveals service info

Great for identifying open services or server types

bash
Copy code
Enter IP: example.com
Enter Port: 80


Chat System (Terminal Messenger)
Peer-to-peer real-time chat over LAN/WAN

Based on raw Netcat pipe communication

bash
Copy code
Server: nc -lvp [port]
Client: nc [target IP] [port]


File Transfer (Send/Receive Files)
Send files using cat filename | nc

Receive files with nc -lvp > filename

Works perfectly over local WiFi or direct connection

bash
Copy code
Send:
cat myfile.zip | nc 192.168.0.2 4444

Receive:
nc -lvp 4444 > myfile.zip


Dependencies
netcat (or nc)

bash shell

Default Linux commands (cat, echo, clear)

Installation
Just clone or download and run:

bash
Copy code
bash netcat-hex.sh


🧠 Use Cases
✅ Network Recon
✅ Service Enumeration
✅ LAN Messaging
✅ Offline File Sharing
✅ Red Team Toolkit Integration


⚠️ Disclaimer
This tool is made for educational and ethical testing purposes only.
Unauthorized use against systems you don't own is illegal.
Developer (Hacker Hex) is not responsible for misuse of this script.



