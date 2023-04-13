Param(
  [string]$probe,
  [string]$message,
  [string]$sensor,
  [string]$device,
  [string]$name,
  [string]$status,
  [string]$lastup,
  [string]$lastdown,
  [string]$linksensor,
  [string]$sensorURL

 
  
)

$Description = "Alerta PRTG:$probe $sensor $device $name $status $message $linksensor lastdown $lastdown $sensorURL "
	$Body = @{
	  "session"="default";
      "chatId"="changeid ";
      "text"=$Description;
    #  "client"="$probe";
     # "client_url"="<url>";
      #"details"="$message"
	} | ConvertTo-Json
	Invoke-RestMethod -Uri "http://http://[server IP]::3000/api/sendText" -ContentType application/json -Method POST -Body $Body 
	#$Body | out-file ".\pager.txt"
