# oss-audit-24BAI10101
# The Open Source Audit 🐧
**My Capstone Project for the Open Source Software Course**

**Name:** Kartik Maheshwari
**Registration Number:** 24BAI10101  

## What is this project about?
Hi! Welcome to my capstone project repository. For this assignment, I decided to dive deep into the **Linux Kernel**. I've put together a report exploring why Linus Torvalds started it, how its GPL v2 license actually works in the real world, and how the kernel handles things like hardware modules, permissions, and updates under the hood. 

## What is inside the repo?

### 1. The Audit Report (`Kartik Maheshwari_OSS_Audit_Report.pdf`)
This is my main project document. It covers:
* **Part A:** The origin story, philosophy, and licensing of the Linux Kernel.
* **Part B:** A hands-on look at its Linux footprint (where it lives, how it runs as root, and how it gets patched).
* **Part C:** The wider FOSS ecosystem and community around the kernel.
* **Part D:** A critical comparison against proprietary operating system alternatives.

### 2. The Shell Scripts
Alongside the report, I wrote 5 Bash scripts to demonstrate some practical command-line automation. I wrote and tested all of these on Ubuntu:
* `script1_system_identity.sh`: A system welcome screen that pulls your OS distro, kernel version, current user, and uptime.
* `script2_package_inspector.sh`: Checks if specific FOSS packages are installed on the system and grabs their version info.
* `script3_disk_auditor.sh`: Loops through key system folders (like `/etc` and `/var/log`) to check their disk usage and permissions.
* `script4_log_analyzer.sh`: Scans a log file line-by-line to count how many times a specific keyword (like "ERROR") pops up.
* `script5_manifesto_generator.sh`: A fun, interactive script that asks you a few questions and generates a custom open-source manifesto saved to a `.txt` file.

## How to test the scripts
If you want to run these on your own Linux machine, just clone the repo, navigate to the folder, and give the scripts execute permissions:

```bash
# Make all scripts executable
chmod +x *.sh

# Run a script
./script1_system_identity.sh

(Just a quick heads-up: for script 4, you will need to pass a log file path when you run it, like this: ./script4_log_analyzer.sh /var/log/syslog)
