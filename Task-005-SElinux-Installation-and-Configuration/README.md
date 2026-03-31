# 🚀 DevOps Hands-on – SELinux Configuration  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on a real-world DevOps task in the **Nautilus Project**.

---

## 🌊 About Project Nautilus
Project Nautilus is run by the Naval subdivision within **xFusionCorp Industries**.  

The application enables naval forces to make **smart procurement decisions** for maritime systems while ensuring:
- Operational efficiency  
- Safety  
- Reduced cost of ownership  

---

## 🔴 Problem Statement
SELinux is a powerful security module in Linux systems. However, during **application setup or testing phases**, it may:

- Block required processes  
- Restrict application communication  
- Cause failures in multi-tier environments  

This can impact application servers and deployment workflows.

---

## 🛠️ Solution (What I Did)

To resolve the issue, I performed the following steps:

- ✔ Installed required SELinux packages  
- ✔ Updated SELinux configuration  
- ✔ Disabled SELinux permanently  
- ✔ Followed change management (no immediate reboot)

---

## 💻 Implementation

```bash
# Install SELinux packages
sudo yum install -y selinux-policy selinux-policy-targeted policycoreutils

# Update SELinux configuration file
sudo vim /etc/selinux/config

# Change the value to:
SELINUX=disabled
## 📊 Result
- SELinux restrictions removed successfully  
- Application processes were no longer blocked  
- System prepared for smooth deployment and testing  

---

## ⚠️ Important Note
Disabling SELinux is **not recommended for production environments**.  

It should be:
- Temporarily adjusted during testing/troubleshooting  
- Re-enabled with proper policies in production  

---

## 💡 Key Takeaway
In real-world DevOps:

> Security tools like SELinux must be carefully managed — balancing **security** and **operational flexibility** is crucial.

---

## 🧠 Learning Outcome
- Practical experience with SELinux configuration  
- Understanding real-world deployment challenges  
- Exposure to change management practices  
- Hands-on troubleshooting in a multi-tier setup  

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