# 🚀 DevOps Hands-on – Script Execution Permissions  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
Currently, I am working on the **KodeKloud Engineer Project (Project Nautilus)** to strengthen my hands-on **DevOps and Linux skills**.

Although I already have knowledge in DevOps, I am actively brushing it up by solving **real-world tasks** in this project.

---

## 🔧 Task
Grant executable permissions to a bash script across servers in a Linux environment.

---

## 🔴 Problem Statement
In a multi-server environment, scripts may not execute due to missing permissions.  

Without proper execution rights:
- Scripts fail to run  
- Automation tasks get blocked  
- Deployment processes can break  

---

## 🛠️ Solution (What I Did)
- ✔ Connected to the target server using SSH  
- ✔ Navigated to the required directory  
- ✔ Updated script permissions  
- ✔ Verified the changes  

---

## 💻 Implementation

```bash
# Connect to server
ssh steve@stapp02

# Navigate to directory
cd /tmp

# Grant execute permission
chmod 755 xfusioncorp.sh

# Verify permissions
ls -l
```
## 📊 Result
- Script execution permission granted successfully  
- All users can now execute the script  
- Automation and task execution enabled  

---

## 💡 Key Learning
Understanding file permissions is crucial in Linux.

To allow execution:
- `chmod 755 filename` → Owner has full access, others can read & execute  
- `chmod a+x filename` → Adds execute permission for all users  

---

## 🧠 Learning Outcome
- Hands-on experience with Linux file permissions  
- Practiced SSH into remote servers  
- Real-world troubleshooting in DevOps environments  
- Improved confidence in managing Linux systems  

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