 🔐 TASK 1 - BASIC NETWORK SCANNING WITH NMAP

📌 OBJECTIVE

The objective of this task is to perform a basic network scan using Nmap to identify open ports, running services, and the operating system of a device on my local network. This task also helps in understanding the security risks associated with the detected services.

---

# 📖 ABOUT NMAP

Nmap (Network Mapper) is a free and open-source network scanning tool used to discover devices connected to a network. It helps identify open ports, running services, service versions, and operating system details. Nmap is widely used by cybersecurity professionals for network discovery, security auditing, and vulnerability assessment.

---

🎯 WHY NETWORK SCANNING IS IMPORTANT

Network scanning is one of the first steps in cybersecurity. It helps identify active devices, open ports, and running services within a network. By understanding these services, security professionals can detect potential vulnerabilities, improve network security, and reduce possible attack risks.

---

🛠️ TOOLS USED

- Kali Linux
- Nmap
- Linux Terminal
- GitHub

---

⚙️ INSTALLATION

Update the package list

```bash
sudo apt update
```

Install Nmap

```bash
sudo apt install nmap
```

Verify the installation

```bash
nmap --version
```

---

🚀 EXECUTION STEPS

 Step 1: Check the Nmap version

```bash
nmap --version
```

---

 Step 2: Find my system IP address

```bash
hostname -I
```

---

Step 3: Find the default gateway

```bash
ip route
```

---

Step 4: Perform a basic network scan

```bash
nmap 192.168.0.1
```

---

Step 5: Perform a service version scan

```bash
sudo nmap -sV 192.168.0.1
```

---

Step 6: Detect the operating system

```bash
sudo nmap -O 192.168.0.1
```

---
📊 SCAN RESULTS

The scan successfully identified the target device on my local network. Nmap detected multiple open ports along with the services running on those ports. It also identified the device as a TP-Link router running a Linux-based operating system.

### Open Ports Identified

| Port | Service | Description |
|------|----------|-------------|
| 21 | FTP | Used for file transfer between systems. |
| 23 | Telnet (Filtered) | Remote login service. Access was filtered. |
| 80 | HTTP | Router web management interface. |
| 139 | NetBIOS | Used for file and printer sharing. |
| 445 | SMB | Used for Windows file sharing. |
| 1900 | UPnP | Used for automatic device discovery on the network. |

---

🔒 SECURITY ANALYSIS

- FTP transfers data without encryption, so it should be secured or disabled if it is not required.
- Telnet is filtered, which helps reduce unauthorized remote access.
- HTTP provides access to the router's configuration page and should always be protected with a strong password.
- NetBIOS and SMB are useful for file sharing but should only be enabled when necessary.
- UPnP makes device discovery easier, but it can increase security risks if left enabled without need.

---

 📂 PROJECT FILES

- README.md
- nmap_scan_results.txt
- screenshots/
- Demo Video (if required)

---

 📸 SCREENSHOTS

The screenshots included in this repository show:

- Nmap Installation Verification
- Basic Network Scan
- Service Version Scan
- Operating System Detection

---

⚠️ ETHICAL USE

This network scan was performed only on a device within my local network where I had permission to perform the scan. Nmap should always be used responsibly and only on systems that you own or have explicit authorization to test.

---

✅ CONCLUSION

This task helped me understand how Nmap works and how network scanning is performed in a real environment. I learned how to identify open ports, detect running services, and analyze the security risks associated with them. It also gave me practical experience in using Nmap as a basic cybersecurity tool.

---

👩‍💻 AUTHOR

Jeevika B

Security Analyst Intern – Oasis Infobyte (OIBSIP)
