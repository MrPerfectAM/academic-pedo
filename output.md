# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Aditya Tomar@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Aditya Tomar
Home Directory:     /home/Aditya Tomar
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 17:11:18 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Aditya Tomar@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this Debian/Ubuntu system.
Version: 3.10.6
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: The Zen of Python, by Tim Peters
   Beautiful is better than ugly.
   Explicit is better than implicit.
   Simple is better than complex.
   Complex is better than complicated.
   Flat is better than nested.
   Sparse is better than dense.
   Readability counts.
   Special cases aren't special enough to break the rules.
   Although practicality beats purity.
   Errors should never pass silently.
   Unless explicitly silenced.
   In the face of ambiguity, refuse the temptation to guess.
   There should be one—and preferably only one—obvious way to do it.
   Although that way may not be obvious at first unless you're Dutch.
   Now is better than never.
   Although never is often better than *right* now.
   If the implementation is easy to explain, it may be a good idea.
   Namespaces are one honking great idea—let's do more of those!
 - Git: "Git is a free and open source distributed version control system."
 - Linux: "Linux is a free and open-source operating system."
 - Bash: "Bash is a Unix shell and command-line interpreter."
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Aditya Tomar@ubuntu-server:~/Python$ ./03-auditor.sh
/usr/bin 4.0K 755 0:0
/usr/lib/python3.10 16K 755 0:0
/usr/lib/python3.10/site-packages 4.0K 755 0:0
/etc 8.0K 755 0:0
/var/log 8.0K 640 0:0
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Aditya Tomar@ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
Count of error in /var/log/syslog: 5
Aug 16 14:30:15 ubuntu-server kernel: [error] usb 2-3: device descriptor read/64, error -110
Aug 16 14:30:15 ubuntu-server kernel: [error] usb 2-3: device descriptor read/64, error -110
Aug 16 14:30:16 ubuntu-server kernel: [error] usb 2-3: device descriptor read/64, error -110
Aug 16 14:30:16 ubuntu-server kernel: [error] usb 2-3: device descriptor read/64, error -110
Aug 16 14:30:17 ubuntu-server kernel: [error] usb 2-3: device descriptor read/64, error -110
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Aditya Tomar@ubuntu-server:~/Python$ ./05-manifesto.sh
What is your name? Aditya Tomar
What is your favorite open-source software? Linux
Why do you support open-source software? because it provides freedom
Manifesto saved to Aditya Tomar-manifesto.txt
```

