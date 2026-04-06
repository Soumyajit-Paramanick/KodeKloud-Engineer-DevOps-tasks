# 🚀 DevOps Hands-on – Install & Configure Tomcat Server + Deploy Java App  
### (KodeKloud Engineer | Project Nautilus)

---

## 📌 About the Task
As part of my **KodeKloud Engineer journey**, I worked on installing and configuring an **Apache Tomcat server** and deploying a Java-based application in a production-like environment.

---

## 🌊 About Project Nautilus
Project Nautilus is run by the Naval subdivision within **xFusionCorp Industries**.  

It helps in:
- Smart procurement decisions  
- Improving operational efficiency  
- Ensuring system reliability  

---

## 🔴 Problem Statement
The Nautilus development team provided a **Java application (ROOT.war)** that needed to be deployed on an application server.

👉 Requirements:
- Install Apache Tomcat on App Server 1  
- Configure Tomcat to run on **port 8087**  
- Copy application from jump host  
- Deploy the application on Tomcat  
- Ensure it is accessible via base URL  

---

## 🧠 Approach (Implementation Strategy)

I followed a structured approach to complete the deployment:

✔️ Installed Tomcat on the application server  
✔️ Modified configuration to change default port  
✔️ Transferred WAR file securely using SCP  
✔️ Deployed application in Tomcat webapps directory  
✔️ Started and verified the service  

---

## ⚙️ Implementation (What I Did)

### 🔹 Step 1: Install Tomcat
```bash
sudo yum install -y tomcat
```
### 🔹 Step 2: Configure Port (8080 → 8087)
```bash
sudo vi /etc/tomcat/server.xml
```
Update:
```bash
<Connector port="8087" protocol="HTTP/1.1"
```
### 🔹 Step 3: Copy WAR File from Jump Host
```bash
scp /tmp/ROOT.war tony@stapp01:/tmp/
```
### 🔹 Step 4: Deploy Application
```bash
sudo mv /tmp/ROOT.war /usr/share/tomcat/webapps/
```
### 🔹 Step 5: Start Tomcat Service
```bash
sudo systemctl start tomcat
sudo systemctl enable tomcat
```
### 🔹 Step 6: Verify Application
```bash
curl http://stapp01:8087
```
## 💻 Implementation Summary

- Installed Apache Tomcat server  
- Changed default port to **8087**  
- Transferred application using `scp`  
- Deployed `.war` file in `/usr/share/tomcat/webapps/`  
- Started and managed service using `systemctl`  
- Verified deployment using `curl`  

---

## 📊 Result

- Tomcat successfully installed and configured  
- Application deployed and running  
- Accessible via base URL:  
  👉 http://stapp01:8087  
- Webpage loaded successfully  

---

## ⚠️ Important Notes

- Deployment must be done on **App Server**, not jump host  

- WAR file should be placed inside:
```bash
/usr/share/tomcat/webapps/
```

- Naming the file as `ROOT.war` ensures:  
👉 Application runs on base URL (no extra path)  

- Port changes must be done in:
```bash
/etc/tomcat/server.xml
```

---

## 💡 Key Takeaway

> Proper configuration + Correct deployment location = Successful application delivery  

This task highlights how real-world Java applications are deployed using Tomcat in a multi-server environment.

---

## 🧠 Learning Outcome

- Apache Tomcat installation and configuration  
- Understanding of `server.xml` configuration  
- Java application deployment using WAR files  
- Secure file transfer using `scp`  
- Service management using `systemctl`  
- Multi-server architecture (Jump Host vs App Server)  

---

## 📁 Repository Context

This task is part of:

**🚀 KodeKloud Engineer DevOps Tasks**

Where I:

- Work on real-world DevOps scenarios  
- Build practical cloud and deployment skills  
- Document hands-on implementations  

---

## 🔗 Connect with Me

- LinkedIn: https://www.linkedin.com/in/soumyajit-paramanick-b04535200/

