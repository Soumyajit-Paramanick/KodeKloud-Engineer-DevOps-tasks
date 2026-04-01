# 🚀 DevOps Hands-on – Create a Cron Job  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on automating scheduled tasks across multiple application servers in the **Nautilus Project**.

---

## 🌊 About Project Nautilus
Project Nautilus is run by the Naval subdivision within **xFusionCorp Industries**.  

It helps in:
- Smart procurement decisions  
- Improving operational efficiency  
- Ensuring system reliability  

---

## 🔴 Problem Statement
The Nautilus system admins wanted to:

- Install and configure **cron service** on all application servers  
- Schedule a recurring task for testing automation  
- Ensure consistency across multiple servers  

---

## 🛠️ Solution (What I Did)

To achieve this, I followed a structured approach:

### 🔹 Step 1: Manual Setup (Understanding Phase)
- Installed `cronie` package  
- Started and enabled `crond` service  
- Added cron job for root user  

### 🔹 Step 2: Automation (Scaling Phase)
- Identified repetitive work  
- Created a bash script to configure remaining servers  
- Executed script from jump host  

---

## 💻 Implementation

### 🔹 Manual Commands (First Server)

```bash
ssh tony@stapp01
sudo -i

yum install cronie -y
systemctl start crond
systemctl enable crond

echo "*/5 * * * * echo hello > /tmp/cron_text" | crontab -
```
## 🔹 Automation Script (Remaining Servers)

```bash
#!/bin/bash

servers=("stapp02" "stapp03")
users=("steve" "banner")

for i in ${!servers[@]}
do
  echo "Configuring ${servers[$i]}..."

  ssh ${users[$i]}@${servers[$i]} << 'EOF'
    sudo yum install cronie -y
    sudo systemctl start crond
    sudo systemctl enable crond
    echo "*/5 * * * * echo hello > /tmp/cron_text" | sudo crontab -
EOF

done
```
## 📊 Result
- Cron service installed on all servers  
- Scheduled job running every 5 minutes  
- Successful automation of repetitive tasks  

---

## ⚠️ Important Note
- Script may prompt for passwords (SSH & sudo)  
- Full automation requires:
  - SSH key-based authentication  
  - Passwordless sudo  
  - Tools like Ansible  

---

## 💡 Key Takeaway

> First understand manually, then automate efficiently.

Automation is essential in DevOps to:
- Reduce manual effort  
- Improve consistency  
- Scale operations across systems  

---

## 🧠 Learning Outcome
- Hands-on experience with cron jobs  
- Linux service management (`systemctl`)  
- Bash scripting for automation  
- Understanding real-world DevOps workflows  

---

## 📁 Repository Context

This task is part of:

**🚀 KodeKloud Engineer DevOps Tasks**

Where I:
- Solve real-world DevOps problems  
- Build automation mindset  
- Document practical implementations  

---

## 🔗 Connect with Me
- LinkedIn: https://www.linkedin.com/in/soumyajit-paramanick-b04535200/