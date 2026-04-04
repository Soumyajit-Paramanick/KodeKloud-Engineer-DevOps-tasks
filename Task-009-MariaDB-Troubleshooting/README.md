# 🚀 DevOps Hands-on – MariaDB Troubleshooting & Recovery  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on resolving a **critical production issue** where the Nautilus application was unable to connect to the database.

---

## 🌊 About Project Nautilus
Project Nautilus is run by the Naval subdivision within **xFusionCorp Industries**.  

It helps in:
- Smart procurement decisions  
- Improving operational efficiency  
- Ensuring system reliability  

---

## 🔴 Problem Statement
The Nautilus application was facing a **database connectivity issue**.

👉 Investigation revealed:
- **MariaDB service was down** on the database server (`stdb01`)  
- Restart attempts were failing  

---

## 🧠 Approach (Debugging Strategy)

Instead of blindly restarting services, I followed a structured troubleshooting approach:

✔️ Checked service status using `systemctl`  
✔️ Attempted restart → observed failure  
✔️ Analyzed logs using `journalctl -xeu mariadb.service`  
✔️ Investigated filesystem and data directory  

---

## ⚠️ Root Cause
MariaDB failed to start because:

- Expected data directory `/var/lib/mysql` was **missing** ❌  
- Incorrect directory `/var/lib/mysqld` existed and was empty ❌  

👉 This caused MariaDB initialization to fail.

---

## 🛠️ Solution (What I Did)

### 🔹 Step 1: Remove Incorrect Directory
```bash
rm -rf /var/lib/mysqld
```
## 🛠️ Solution (What I Did)

### 🔹 Step 2: Create Correct Data Directory
```bash
mkdir -p /var/lib/mysql
```
### 🔹 Step 3: Set Proper Ownership
```bash
chown -R mysql:mysql /var/lib/mysql
```
### 🔹 Step 4: Initialize Database
```bash
mariadb-install-db --user=mysql --datadir=/var/lib/mysql
```
### 🔹 Step 5: Start MariaDB Service
```bash
systemctl start mariadb
systemctl status mariadb
```
## 💻 Implementation Summary

- Identified service failure using `systemctl`  
- Used `journalctl` for log-based debugging  
- Fixed incorrect data directory issue  
- Initialized MariaDB system tables  
- Successfully restored database service  

---

## 📊 Result

- MariaDB service successfully started  
- Database fully initialized  
- Application connectivity issue resolved  
- Production environment restored  

---

## ⚠️ Important Notes

- MariaDB requires a properly initialized data directory  
- Incorrect directory names can break service startup  
- Always analyze logs before applying fixes  
- Permissions and ownership are critical for database services  

---

## 💡 Key Takeaway

> Don’t guess — investigate using logs.

Even a small misconfiguration (like a wrong directory) can cause a complete service failure.  
A structured debugging approach is essential in real-world DevOps.

---

## 🧠 Learning Outcome

- Systemd service troubleshooting  
- Log analysis using `journalctl`  
- MariaDB initialization process  
- Linux file system debugging  
- Root cause analysis in production scenarios  

---

## 📁 Repository Context

This task is part of:

**🚀 KodeKloud Engineer DevOps Tasks**

Where I:
- Solve real-world DevOps problems  
- Build troubleshooting mindset  
- Document practical implementations  

---

## 🔗 Connect with Me

- LinkedIn: https://www.linkedin.com/in/soumyajit-paramanick-b04535200/