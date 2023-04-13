Requirements
docker
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh

Installation Steps

Deploy container
docker run -it --rm -p 3000:3000/tcp --name whatsapp-http-api devlikeapro/whatsapp-http-api

Access the API
http://[server IP]:3000

Start the service from the /api/sessions/start option

Scan QR /api/screenshot?session=default

Scan QR

Send test /api/SendText
Use the following format for the phone: code+number+@c.us
To get the group ID, use /api/default/groups
Format to send through messages from other services
Example for curl

curl -X 'GET'
'http://http://[server IP]:3000/api/sendText?phone=code+number+@c.us&text=hello&session=default'
-H 'accept: application/json'
Postman
Post method to http://[server IP]:3000

Body
{
"session": "default",
"chatId": "code+number+@c.us",
"text": "message to send!"
}

Script PRTG wsp.ps1 save in C:\Program Files (x86)\PRTG Network Monitor\Notifications\EXE 

prtg template  
script : wsp.ps1
parameters '%probe' - sensor '%sensor' -sensorID '%sensorid' -status '%status' -message '%message' -since '%since' -lastdown '%lastdown' -device '%device' -sensorURL '%linksensor' -deviceURL '%linkdevice' -serviceURL '%serviceurl'
