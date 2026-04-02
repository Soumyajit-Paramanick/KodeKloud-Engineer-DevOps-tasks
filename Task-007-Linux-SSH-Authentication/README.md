# 🚀 DevOps Hands-on – Password-less SSH Authentication  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on setting up secure and automated access between servers in the **Nautilus Project**.

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

- Enable **password-less SSH authentication**  
- Allow scripts running on the **jump host** to access all application servers  
- Ensure seamless automation without manual password input  

👉 Requirement:
Set up password-less SSH from user `thor` (jump host) to:
- `tony@stapp01`  
- `steve@stapp02`  
- `banner@stapp03`  

---

## 🛠️ Solution (What I Did)

### 🔹 Step 1: Manual Setup (Understanding Phase)
- Generated SSH key using `ssh-keygen`  
- Logged into first server (`stapp01`)  
- Created `.ssh/authorized_keys`  
- Added public key  
- Set proper permissions  

---

### 🔹 Step 2: Automation (Scaling Phase)
- Identified repetitive steps  
- Created a bash script  
- Automated SSH key distribution for remaining servers  

---

## 💻 Implementation

### 🔹 Manual Commands (First Server)

```bash
ssh thor@jump-host

ssh-keygen -t rsa

ssh tony@stapp01

mkdir -p ~/.ssh
vim ~/.ssh/authorized_keys   # Paste public key

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```
### 🔹 Automation Script (Remaining Servers)

```bash
#!/bin/bash

# Step 1: Get public key
PUB_KEY=$(cat ~/.ssh/id_rsa.pub)

# Step 2: Define users and hosts (skip tony since already done)
users=("steve" "banner")
hosts=("stapp02" "stapp03")

# Step 3: Loop to configure SSH
for i in ${!users[@]}
do
    user=${users[$i]}
    host=${hosts[$i]}

    echo "=================================="
    echo "Setting up SSH for $user@$host"
    echo "Enter password when prompted"

    ssh $user@$host "
        mkdir -p ~/.ssh &&
        echo '$PUB_KEY' >> ~/.ssh/authorized_keys &&
        chmod 700 ~/.ssh &&
        chmod 600 ~/.ssh/authorized_keys
    "
done

# Step 4: Test password-less SSH
echo "=================================="
echo "Testing password-less SSH..."

for i in ${!users[@]}
do
    user=${users[$i]}
    host=${hosts[$i]}

    echo "Testing $user@$host"

    ssh -o PasswordAuthentication=no $user@$host "echo SUCCESS"
done

echo "=================================="
echo "All servers configured successfully!"
```
## 📊 Result
- Password-less SSH configured on all application servers  
- Jump host can access all servers without manual password  
- Automation scripts can now run seamlessly  
- Reduced repetitive manual work  

---

## ⚠️ Important Note
- First-time login requires password  
- Correct permissions are critical:
  - `.ssh` → `700`  
  - `authorized_keys` → `600`  
- SSH is user-specific (not root unless configured separately)  

---

## 💡 Key Takeaway

> First understand manually, then automate efficiently.

Password-less SSH is essential in DevOps to:
- Enable automation  
- Reduce manual intervention  
- Improve security over password-based login  

---

## 🧠 Learning Outcome
- Deep understanding of SSH key-based authentication  
- Debugging common SSH issues (permissions, file vs directory, user context)  
- Bash scripting for automation  
- Practical DevOps workflow implementation  

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