# This file is used to run powershell-remote commands from within Shuffle from python. 
# Fields using { } are to be replaced (username, password, command) 
#
#$parsedPassword = ConvertTo-SecureString -String {PASSWORD} -AsPlainText -Force
#$creds = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList {USERNAME}, $parsedPassword

#$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Authentication Basic -AllowRedirection -Credential $creds

#Import-PSSession $Session -DisableNameChecking -CommandName Get-QuarantineMessage, Get-QuarantineMessageHeader, Delete-QuarantineMessage, Export-QuarantineMessage, Preview-QuarantineMessage, Release-QuarantineMessage

#Connect-ExchangeOnline -CertificateFilePath "./cert.pfx" -CertificatePassword (ConvertTo-SecureString -String "{PASSWORD}" -AsPlainText -Force) -AppID "{APP_ID}" -Organization "{ORGANIZATION}" -CommandName Get-Mailbox 
Connect-IPPSSession -CertificateFilePath "./cert.pfx" -AppID "{APP_ID}" -Organization "{ORGANIZATION}" -CertificatePassword (ConvertTo-SecureString -String "{PASSWORD}" -AsPlainText -Force)

echo "SHFFL_START"
{COMMAND}
