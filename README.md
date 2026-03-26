# Open Source Shell Scripts Project

## Student Information

- **Student Name:** Ishan Singh
- **Roll Number:** [24MIP10032]
- **Course:** Open Source Software
- **Chosen Software:** Git (Distributed Version Control)

---

## Project Overview

This project consists of five Bash shell scripts designed to demonstrate proficiency in Linux system administration and automation. These scripts cover a range of tasks from system reporting to log analysis and interactive user input.

---

## Script Descriptions

### 1. Script 1: System Identity Report (`script1_system_identity.sh`)

Displays a professional welcome screen for the Linux system. It provides details about the distribution, kernel version, current user, home directory, system uptime, and current date/time. It also includes a statement on the OS license.

### 2. Script 2: FOSS Package Inspector (`script2_foss_inspector.sh`)

Checks if a specified FOSS package (default is `git`) is installed on the system using various package managers (`dpkg`, `rpm`, or `pacman`). It displays the version and license information if found and provides a philosophical note about the software.

### 3. Script 3: Disk and Permission Auditor (`script3_disk_auditor.sh`)

Iterates through a list of critical system directories (`/etc`, `/var/log`, `/home`, etc.) to report their disk usage, ownership, and permissions. It also specifically audits the `/etc/ssh` configuration directory.

### 4. Script 4: Log File Analyzer (`script4_log_analyzer.sh`)

Processes a log file line-by-line to count the occurrences of a specific keyword (e.g., "error"). It features a robust retry mechanism for missing or empty files and displays the last five matching entries for context.

### 5. Script 5: Open Source Manifesto Generator (`script5_manifesto_generator.sh`)

An interactive script that asks the user three philosophical questions and generates a personalized open-source manifesto saved as a text file (`manifesto_<user>.txt`).

---

## Step-by-Step Instructions

### 1. Prerequisites

Ensure you are running these scripts on a Linux distribution (Ubuntu, Debian, Fedora, Arch, etc.) with a Bash shell environment.

### 2. Set Executable Permissions

Before running the scripts, you must grant them execution permissions:

```bash
chmod +x script*.sh
```

### 3. Run the Scripts

Execute each script from the terminal using the following commands:

- **System Identity Report:**

  ```bash
  ./script1_system_identity.sh
  ```

- **FOSS Package Inspector:**

  ```bash
  ./script2_foss_inspector.sh
  ```

- **Disk and Permission Auditor:**

  ```bash
  ./script3_disk_auditor.sh
  ```

- **Log File Analyzer:** (Requires a log file path as an argument)

  ```bash
  ./script4_log_analyzer.sh test_system.log "error"
  ```

- **Manifesto Generator:**

  ```bash
  ./script5_manifesto_generator.sh
  ```

---

## Dependencies

These scripts rely on standard GNU/Linux utilities that are typically pre-installed on most distributions:

- **Core Utils:** `bash`, `echo`, `grep`, `cut`, `awk`, `tr`, `uname`, `whoami`, `uptime`, `date`, `du`, `ls`, `tail`, `cat`.
- **Package Managers:** One of `dpkg` (Debian/Ubuntu), `rpm` (RedHat/Fedora), or `pacman` (Arch) is required for Script 2 to function fully.
