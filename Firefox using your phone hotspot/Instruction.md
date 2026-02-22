# ForceBindIP Firefox Launcher

This guide explains how to use a batch (`.bat`) script and **ForceBindIP** to force a specific, portable instance of Firefox to route its internet traffic through a secondary network adapter (such as a mobile hotspot tether). This ensures your browsing traffic bypasses the default system network.

⚠️ **Crucial Prerequisite:** For ForceBindIP to successfully hook into modern Firefox, you **must** disable Firefox's built-in DLL injection protection. 
1. Open your Firefox instance.
2. Navigate to `about:config` in the address bar.
3. Search for `browser.launcherProcess.enabled` and set it to `false`. 
4. Restart Firefox to check if it is saved.

*(If Firefox keeps resetting this, you will need to bind it permanently using a `user.js` file).*

---

## 🚀 Setup Instructions

### 1. Install ForceBindIP
Ensure you have [ForceBindIP](https://r1ch.net/projects/forcebindip) installed on your system. The script below assumes the 64-bit version is installed in the default directory.

### 2. Create the Batch File
1. Right-click the `.bat` file, select **Edit** (or open with Notepad), and edit the code.

### The Code
```bat
:: ForceBindIP will route this Firefox instance through the specified IP address

"C:\Program Files (x86)\ForceBindIP\ForceBindIP64.exe" 192.168.0.1 "C:\Users\yourself\Desktop\Foxes\firefox.exe"
```

### 3. Customize Your Variables
Before running the script, you must modify two specific parts of the code to match your computer:

* **The IP Address (`192.168.0.1`):** Change this to the IPv4 address of the network adapter you want to use (e.g., your iPhone USB Ethernet adapter). You can find your current IP by opening the Command Prompt and typing `ipconfig`.
* **The File Path (`yourself`):** Change the word `yourself` to your actual Windows username so the path correctly points to where your `Foxes` folder is located.

---
**How to run:** Simply double-click the `.bat` file whenever you want to launch your isolated browser!
