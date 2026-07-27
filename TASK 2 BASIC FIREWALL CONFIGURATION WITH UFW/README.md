TASK 2: BASIC FIREWALL CONFIGURATION WITH UFW

Objective

The objective of this task is to set up and configure a basic firewall on Kali Linux using UFW (Uncomplicated Firewall). The firewall is configured with rules to allow and deny specific types of network traffic.

Tools Used

- Kali Linux
- UFW (Uncomplicated Firewall)
- VirtualBox
- Windows PowerShell

Introduction

A firewall is a security system that controls incoming and outgoing network traffic based on a set of rules. It helps protect a computer from unwanted or unauthorized network connections.

UFW stands for Uncomplicated Firewall. It is a simple command-line tool used in Linux to manage firewall rules easily.

Firewall Configuration

First, I installed UFW and checked its current status. I then configured the default firewall policies and added rules for different ports.

The following rules were configured:

- **Default Incoming Policy:** Deny
- **Default Outgoing Policy:** Allow
- **HTTPS (Port 443):** Allowed
- **HTTP (Port 80):** Denied
- **Telnet (Port 23):** Denied
- **Port 3389:** Allowed only from the `10.0.2.0/24` network
 Commands Used
Install UFW

```bash
sudo apt install ufw -y
Check Firewall Status
sudo ufw status verbose
Set Default Policies
sudo ufw default deny incoming
sudo ufw default allow outgoing
Allow HTTPS
sudo ufw allow https
Deny HTTP
sudo ufw deny http
Deny Telnet
sudo ufw deny 23
Allow Port 3389 from the 10.0.2.0/24 Network
sudo ufw allow from 10.0.2.0/24 to any port 3389
Check Network Information
ip addr
Testing and Verification

After configuring the firewall, I checked the active rules using:

sudo ufw status verbose

I also checked the IP address of my Kali Linux virtual machine using:

ip addr

The Kali Linux VM was using the IP address 10.0.2.15.

I tried to test port 3389 from Windows PowerShell using:

Test-NetConnection -ComputerName 10.0.2.15 -Port 3389

The connection was unsuccessful because my Kali Linux VM was running with VirtualBox NAT networking, so the Windows host could not directly reach the Kali VM through the 10.0.2.15 address. Therefore, this test was not considered as direct proof of the UFW rule.

The firewall configuration was verified using the UFW status command and by checking the configured rules.

Reason for Choosing the Rules
HTTPS (443) was allowed for secure web communication.
HTTP (80) was denied to block unencrypted web traffic.
Telnet (23) was denied because Telnet is an insecure protocol.
Port 3389 was allowed only from 10.0.2.0/24 to demonstrate restricting access to a specific network.
Incoming traffic was denied by default to prevent unauthorized connections.
Outgoing traffic was allowed by default so that the system can communicate with external services.
Automation Script

I created a Bash script named ufw_configuration.sh to automate the firewall configuration.

The script can be made executable using:

chmod +x ufw_configuration.sh

The script can then be executed using:

./ufw_configuration.sh
Project Files
TASK 2 BASIC FIREWALL CONFIGURATION WITH UFW
│
├── README.md
├── ufw_configuration.sh
└── screenshots
    └── ufw_status.png
Conclusion

Through this task, I learned how to install and configure UFW on Kali Linux and how to create firewall rules to control network traffic. I also learned how to allow specific services, deny unwanted ports, set default firewall policies, and verify the firewall configuration.

This task helped me understand the basic use of firewalls and their importance in protecting a Linux system from unauthorized network access.

Author

Jeevika B
Security Analyst Intern
Oasis Infobyte
