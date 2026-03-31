# 🚀 DevOps Hands-on – Temporary User Setup with Expiry  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I am strengthening my **DevOps and Linux skills** through consistent hands-on practice.

Although I already have knowledge in DevOps tools like Terraform, Ansible, Docker, Jenkins, Kubernetes, and GitHub Actions, I am actively reinforcing my concepts by working on real-world tasks in the **Nautilus Project**.

---

## 🔧 Task
Create a temporary user in a Linux environment with an account expiry date.

---

## 🔴 Problem Statement
In real-world environments, temporary access is often required for:

- Contractors or third-party users  
- Short-term projects  
- Limited-time system access  

Without expiry:
- Accounts may remain active unnecessarily  
- Security risks increase over time  

---

## 🛠️ Solution (What I Did)
- ✔ Created a new user using `useradd`  
- ✔ Generated a home directory using `-m`  
- ✔ Set an account expiry date using `-e`  
- ✔ Ensured temporary access control  

---

## 💻 Implementation

```bash
# Create a temporary user with expiry
useradd -m -e 2026-04-10 temp_user
```
## 📊 Result
- Temporary user created successfully  
- Account configured with expiry date  
- Improved access control and security  

---

## 💡 Key Learning
Understanding user management is crucial in Linux.

- `-m` → Creates home directory  
- `-e` → Sets account expiry date  

This helps in implementing **temporary and controlled access** in real-world systems.

---

## 🧠 Learning Outcome
- Hands-on experience with Linux user management  
- Understanding temporary access control  
- Exposure to real-world security practices  
- Improved confidence in system administration  

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