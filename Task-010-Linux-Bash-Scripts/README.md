# 🚀 DevOps Hands-on – Website Backup Automation using Bash  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on automating a **website backup process** using a Bash script in a production-like environment.

---

## 🌊 About Project Nautilus
Project Nautilus is run by the Naval subdivision within **xFusionCorp Industries**.  

It helps in:
- Smart procurement decisions  
- Improving operational efficiency  
- Ensuring system reliability  

---

## 🔴 Problem Statement
The production support team needed to automate **website backups** from an application server.

👉 Requirements:
- Create a compressed archive of the website directory  
- Store backup locally on the server  
- Transfer backup to a remote storage server  
- Ensure **passwordless authentication** for automation  
- Avoid using `sudo` inside the script  

---

## 🧠 Approach (Implementation Strategy)

I followed a structured approach to implement this automation:

✔️ Identified source directory (`/var/www/html/blog`)  
✔️ Created a Bash script for automation  
✔️ Used compression for efficient storage  
✔️ Configured secure file transfer between servers  
✔️ Set up SSH key-based authentication  

---

## ⚙️ Implementation (What I Did)

### 🔹 Step 1: Install Required Package
```bash
yum install -y zip
```
### 🔹 Step 2: Create Bash Script
```bash
vi /scripts/blog_backup.sh
```
### 🔹 Step 3: Script Content
```bash
#!/bin/bash

source_dir="/var/www/html/blog"
backup_file="xfusioncorp_blog.zip"
local_backup_dir="/backup"
remote_user="natasha"
remote_host="ststor01"
remote_dir="/backup"

mkdir -p $local_backup_dir
zip -r $local_backup_dir/$backup_file $source_dir
scp $local_backup_dir/$backup_file $remote_user@$remote_host:$remote_dir
```
### 🔹 Step 4: Make Script Executable
```bash
chmod +x /scripts/blog_backup.sh
```
### 🔹 Step 5: Configure Passwordless Authentication
```bash
ssh-keygen
ssh-copy-id natasha@ststor01
```
### 🔹 Step 6: Execute Script
```bash
/scripts/blog_backup.sh
```
## 💻 Implementation Summary

- Automated backup using Bash scripting  
- Compressed website files using `zip`  
- Stored backup locally in `/backup`  
- Transferred backup to remote server using `scp`  
- Configured SSH key-based authentication  

---

## 📊 Result

- Backup archive successfully created  
- Stored locally on application server  
- Successfully transferred to storage server  
- No password prompt during transfer  
- Fully automated backup workflow  

---

## ⚠️ Important Notes

- `zip` package must be installed before execution  
- SSH key setup is required for passwordless transfer  
- Avoid using `sudo` inside automation scripts  
- Proper directory paths must be verified  

---

## 💡 Key Takeaway

> Automation + Security = Reliable DevOps Workflow  

This task highlighted the importance of combining **automation (Bash)** with **secure communication (SSH keys)** in real-world DevOps environments.

---

## 🧠 Learning Outcome

- Bash scripting for automation  
- SSH key-based authentication (`ssh-keygen`, `ssh-copy-id`)  
- Secure file transfer using `scp`  
- File compression using `zip`  
- Understanding real-world backup strategies  

---

## 📁 Repository Context

This task is part of:

**🚀 KodeKloud Engineer DevOps Tasks**

Where I:

- Work on real-world DevOps scenarios  
- Build automation skills  
- Document practical implementations  

---

## 🔗 Connect with Me

- LinkedIn: https://www.linkedin.com/in/soumyajit-paramanick-b04535200/
