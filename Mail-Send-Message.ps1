$From = "user@contoso.com"
$To = "user2@contoso.com", "jorah-mormont@contoso.com"
$Cc = "<any cc>"
$Subject = "Script Results"
$Body = "<h2>Large Body Text</h2><br>"
$Body += "Regular Body Text"
$SMTPServer = "mailrouter.contoso.com"
$Attachment = "C:\Temp\contoso.jpg"

Send-MailMessage -From $From -to $To -Subject $Subject -Body $Body -BodyAsHtml -SmtpServer $SMTPServer   -Attachments $Attachment
