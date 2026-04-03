# 🚀 DevOps Hands-on – Install Ansible on Jump Host  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on setting up an **Ansible control node** on the jump host to enable automation across multiple servers.

---

## 🌊 About Project Nautilus
Project Nautilus is run by the Naval subdivision within **xFusionCorp Industries**.  

It helps in:
- Smart procurement decisions  
- Improving operational efficiency  
- Ensuring system reliability  

---

## 🔴 Problem Statement
The Nautilus DevOps team decided to implement **Ansible** for automation due to its simplicity and minimal setup requirements.

👉 Requirement:
- Install **Ansible 4.10.0 using pip3 only**  
- Configure it on the **jump host (control node)**  
- Ensure Ansible is **globally accessible to all users**  

---

## 🛠️ Solution (What I Did)

### 🔹 Step 1: Install Dependencies
```bash
yum install python3-pip -y
pip3 install wheel
```

---

### 🔹 Step 2: Install Ansible
```bash
pip3 install ansible==4.10.0
```

---

### 🔹 Step 3: Verify Installation
```bash
ansible --version
which ansible
```

---

### 🔹 Step 4: Fix PATH (Global Access)
```bash
echo 'export PATH=/usr/local/bin:$PATH' > /etc/profile.d/ansible.sh
chmod +x /etc/profile.d/ansible.sh
source /etc/profile.d/ansible.sh
```

---

### 🔹 Step 5: Testing & Validation
```bash
useradd testuser
su - testuser
ansible --version
```

✔️ Verified Ansible works for non-root users  
✔️ Confirmed global accessibility  

---

## 💻 Implementation Summary

- Installed Ansible using pip3  
- Installed `wheel` for optimized package installation  
- Verified binary location (`/usr/local/bin`)  
- Configured system-wide PATH  
- Tested across multiple users  

---

## 📊 Result
- Ansible successfully installed on jump host  
- Control node ready for automation  
- Accessible by all users on the system  
- Environment validated through testing  

---

## ⚠️ Important Notes
- `pip3` installs binaries in `/usr/local/bin`  
- PATH must include `/usr/local/bin` for global access  
- Installing `wheel` avoids slow source builds  
- Always validate setup using a non-root user  

---

## 💡 Key Takeaway

> Installation is not enough — validation across users is critical in DevOps.

Ansible setup is a foundational step to:
- Automate infrastructure  
- Manage multiple servers efficiently  
- Reduce manual intervention  

---

## 🧠 Learning Outcome
- Understanding of Ansible installation using pip  
- Debugging PATH-related issues  
- Importance of global accessibility in multi-user systems  
- Real-world DevOps validation approach  

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