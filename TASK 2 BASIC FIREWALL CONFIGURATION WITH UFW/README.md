TASK 2: BASIC FIREWALL CONFIGURATION WITH UFW

Objective

In this task, I set up and configured a basic firewall in Kali Linux using UFW (Uncomplicated Firewall). I created different firewall rules to allow and block specific types of network traffic and checked whether the rules were working correctly.

Tools Used

- Kali Linux
- UFW (Uncomplicated Firewall)
- VirtualBox
- Windows PowerShell

About UFW

UFW stands for Uncomplicated Firewall. It is a simple command-line tool used in Linux to manage firewall rules.

A firewall helps protect a computer by controlling the network traffic that is allowed to enter or leave the system. By creating rules, we can decide which connections should be allowed and which ones should be blocked.

 Firewall Configuration

First, I installed UFW and checked its current status.

I then configured the default firewall policies as follows:

- Incoming connections were set to **deny** by default.
- Outgoing connections were set to **allow** by default.

After that, I added the following rules:

| Service | Port | Rule | Purpose |
|--------|------|------|---------|
| HTTPS | 443 | Allow | To allow secure web traffic |
| HTTP | 80 | Deny | To block unencrypted HTTP traffic |
| Telnet | 23 | Deny | To block insecure Telnet connections |
| RDP | 3389 | Allow from 10.0.2.0/24 | To allow access only from the specified network |

 Commands Used
 Install UFW

```bash
sudo apt install ufw -y
