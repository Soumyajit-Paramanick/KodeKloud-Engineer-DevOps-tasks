# 🚀 DevOps Hands-on – Troubleshoot Apache Service on Custom Port  
### (KodeKloud Engineer Assigned Task | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on troubleshooting a **Linux network service issue** where the Apache service was not reachable on a custom port.

---

## 🌊 About Project Nautilus
Project Nautilus is run by the Naval subdivision within **xFusionCorp Industries**.  

It helps in:
- Smart procurement decisions  
- Improving operational efficiency  
- Ensuring system reliability  

---

## 🔴 Problem Statement
Our monitoring tool reported that Apache service on **App Server 1 (stapp01)** was not reachable on **port 6300**.

👉 Possible causes:
- Apache service might be down  
- Firewall might be blocking traffic  
- Port conflict or misconfiguration  

👉 Requirement:
- Identify and fix the issue using tools like `ss`, `netstat`  
- Ensure Apache is accessible from jump host  
- Do NOT modify application files  

---

## 🧠 Approach (Implementation Strategy)

✔️ Checked Apache service status  
✔️ Identified port conflict  
✔️ Verified configuration  
✔️ Fixed service issue  
✔️ Updated firewall rules  
✔️ Validated from jump host  

---

## ⚙️ Implementation (What I Did)

### 🔹 Step 1: Login to App Server
```bash
ssh tony@stapp01
```
### 🔹 Step 2: Check Apache Service Status
```bash
sudo systemctl status httpd
```
### 🔹 Step 3: Identify Port Usage
```bash
sudo ss -tulnp | grep 6300
```

👉 Found sendmail using port 6300

### 🔹 Step 4: Stop Conflicting Service
```bash
sudo systemctl stop sendmail
sudo systemctl disable sendmail
```
### 🔹 Step 5: Start Apache Service
```bash
sudo systemctl start httpd
sudo systemctl enable httpd
```
### 🔹 Step 6: Verify Apache is Listening
```bash
sudo ss -tulnp | grep 6300
```
### 🔹 Step 7: Check Firewall Rules
```bash
sudo iptables -L -n
```
### 🔹 Step 8: Allow Port 6300
```bash
sudo iptables -I INPUT -p tcp --dport 6300 -j ACCEPT
```
### 🔹 Step 9: Test Locally
```bash
curl http://localhost:6300
```
### 🔹 Step 10: Verify from Jump Host
```bash
exit
curl http://stapp01:6300
```
## 💻 Implementation Summary

- Checked Apache service status  
- Identified port conflict using `ss`  
- Stopped conflicting service (sendmail)  
- Restarted Apache service  
- Updated firewall rules  
- Verified service accessibility  

---

## 📊 Result

- Apache service successfully running  
- Listening on port **6300**  
- Accessible from jump host  
  👉 http://stapp01:6300  
- Issue resolved successfully ✅  

---

## ⚠️ Important Notes

- Do NOT modify `index.html`  

- Always check port usage before troubleshooting:
```bash
ss -tulnp
```
- Firewall rules can block access even if service is running  

---

## 💡 Key Takeaway

> Effective troubleshooting requires a layered approach:  
👉 Service → Port → Configuration → Firewall  

---

## 🧠 Learning Outcome

- Linux service troubleshooting (`systemctl`)  
- Port conflict identification (`ss`)  
- Firewall rule management (`iptables`)  
- Multi-server communication  
- Real-world DevOps debugging approach  

---

## 📁 Repository Context

This task is part of:

**🚀 KodeKloud Engineer DevOps Tasks**

Where I:

- Solve real-world DevOps scenarios  
- Build practical troubleshooting skills  
- Document hands-on implementations  

---

## 🔗 Connect with Me

- LinkedIn: https://www.linkedin.com/in/soumyajit-paramanick-b04535200/
