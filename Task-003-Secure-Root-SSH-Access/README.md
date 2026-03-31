# 🔐 DevOps Hands-on – Secure Root SSH Access  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on a real-world security task in the **Nautilus Project**.

---

## 🔧 Task
Disable direct root SSH login across multiple application servers.

---

## 🔴 Problem Statement
Allowing direct root SSH login can lead to serious security risks:

- Unauthorized access to critical systems  
- Lack of accountability (no user tracking)  
- Increased attack surface for brute-force attacks  

---

## 🛠️ Solution (What I Did)
- ✔ Connected via a jump host  
- ✔ Accessed multiple application servers (`stapp01`, `stapp02`, `stapp03`)  
- ✔ Modified SSH configuration  
- ✔ Restarted SSH service to apply changes  

---

## 💻 Implementation

```bash
# Connect to app server
ssh tony@stapp01

# Edit SSH configuration
sudo vim /etc/ssh/sshd_config

# Update this line
PermitRootLogin no

# Restart SSH service
sudo systemctl restart sshd
```
## 📊 Result
- Root SSH login disabled successfully  
- Servers are now more secure  
- Access control enforced via non-root users  

---

## 💡 Why This Matters
Disabling root SSH login is a critical security practice:

- Prevents direct unauthorized access  
- Enforces controlled privilege escalation using `sudo`  
- Improves system auditability and accountability  

---

## 🧠 Learning Outcome
- SSH hardening techniques  
- Managing multiple servers via jump host  
- Applying real-world Linux security best practices  
- Strengthening DevOps security fundamentals  

---

## 📁 Repository Context
This task is part of:

**🚀 KodeKloud Engineer DevOps Tasks**

Where I:
- Solve real-world DevOps problems  
- Strengthen hands-on skills  
- Apply concepts in practical scenarios  

---

## 🔗 Connect with Me
- LinkedIn: https://www.linkedin.com/in/soumyajit-paramanick-b04535200/