# 🚀 DevOps Hands-on – Linux User Setup with Non-Interactive Shell  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I am building strong **DevOps and Linux fundamentals** through consistent hands-on practice in real-world scenarios.

---

## 🔧 Task
Create a user with a non-interactive shell to restrict login access.

---

## 🔴 Problem Statement
In Linux systems, certain users (like service accounts) should not have interactive login access.

Without restrictions:
- Users may gain unnecessary shell access  
- Security risks can increase  
- System integrity may be compromised  

---

## 🛠️ Solution (What I Did)
- ✔ Created a new user  
- ✔ Assigned a non-interactive shell  
- ✔ Ensured restricted login access  
- ✔ Followed best practices for service accounts  

---

## 💻 Implementation

```bash
# Create user with non-interactive shell
useradd -s /sbin/nologin kareem
```
## 📊 Result
- User created successfully with restricted access  
- Interactive login prevented  
- System security improved  

---

## 💡 Key Learning
Using a non-interactive shell enhances security.

- `-s` → Used to specify the login shell for the user  
- `/sbin/nologin` → Prevents user from logging into the system  
- Useful for **service accounts and background processes**  

---

## 🧠 Learning Outcome
- Hands-on experience with Linux user management  
- Understanding non-interactive shells  
- Improved knowledge of system security practices  
- Strengthened DevOps fundamentals  

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