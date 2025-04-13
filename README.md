<div align="center">

# NanoCord
<img src="https://github.com/user-attachments/assets/65359e04-9f3a-4b57-a8be-2db2c8ce113b" width="400" height="300">
</div>

#### NanoCord is a minimalist and performance-optimized way to use Discord, designed for users who want a smoother experience on low-end or resource-conscious systems. It runs Discord as a streamlined web app in Cromium browsers while disabling unnecessary background processes, extensions, and GPU-intensive features to reduce resource usage. Ideal for users who need a quick, efficient way to access Discord without the lag or system strain of the full desktop client.

---


### Features:
- **Fast & Lightweight – Launches Discord with minimal overhead.**  
   Launches Discord with minimal overhead.

- **Optimized Performance**  
   Disables background tasks, sync, and GPU-intensive settings.

- **Better Resource Management**  
   Restricts CPU usage via processor affinity for efficiency.

- **No Extensions or Bloat**  
   Runs in a clean, distraction-free environment.

---

# 🚀 How to Run the Script

 **Open PowerShell and paste the command below**  
```ps1
iwr "https://raw.githubusercontent.com/ltx0101/NanoCord/main/Nanocord.ps1" -OutFile "Nanocord.ps1"; .\Nanocord.ps1
```

### ❗Error: "Running Scripts is Disabled on this System"❗ 
<details>  
<summary> Click Here </summary>

If you encounter the error **"Running Scripts is Disabled on this System"**, it means that PowerShell's execution policy is preventing scripts from running for security reasons.

To resolve this, follow these steps:

1. **Open PowerShell as Administrator**  
   
2. **Change the Execution Policy**  
   Run the following command in the PowerShell window to allow locally-created scripts to run:

   ```ps1
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
   ```
</details>

---
<div align="center">
   
[![PayPal Donate](https://img.shields.io/badge/PayPal_Donate-s?style=for-the-badge&logo=paypal&logoColor=black)](https://paypal.me/AggelosMeta)

</div>

<div align="center">
  
Made with ❤️ and PowerShell  

</div>
