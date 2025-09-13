
| **Switch** | **Description** |
| :---  | :--- | 
| /e | Copies all subdirectories, including empty ones. | 
| /z | Enables restartable mode, useful for large files or network copies. |
| /r:0 | Sets the number of retries on failed copies to 0 (no retries). |
| /w:0 | Sets the wait time between retries to 0 seconds. |
| /MT:16 | Uses multi-threading with 16 threads (speeds up copying). |
| /COPYALL  | Copies all file info: data, attributes, timestamps, security (ACLs), owner, auditing. |
| /eta | Displays the estimated time of arrival (completion) per file. |
| /LOG:C:\temp\robocopy.txt | Logs output to C:\temp\robocopy.txt. Overwrites if file exists.# Robocopy command  |
<br>
Copy the code
```
robocopy source destination  /e /z /r:0 /w:0 /MT:16 /COPYALL /eta /LOG:C:\temp\robocopy.txt 
```
