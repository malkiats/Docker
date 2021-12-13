# Docker Installtion / Configuation / Troubleshooting

(Docker Shortcuts)  
$ docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Names}}"   - List containers  

$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 75000c343eb7    -  IP Address  

$ docker network inspect -f '{{range .IPAM.Config}}{{.Subnet}}{{end}}'  9f6bc3c15568         -  Network Setting  

$ docker network inspect -f '{{json .Containers}}' 9f6bc3c15568 | jq '.[] | .Name + ":" + .IPv4Address'      -  IP individually  
