# Docker Installtion / Configuation / Troubleshooting

(Docker Shortcuts)  
$ docker ps --format "table {{.ID}}\t{{.Status}}\t{{.Names}}"   - List containers  

$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 75000c343eb7    -  IP Address  

$ docker network inspect -f '{{range .IPAM.Config}}{{.Subnet}}{{end}}'  9f6bc3c15568         -  Network Setting  

$ docker network inspect -f '{{json .Containers}}' 9f6bc3c15568 | jq '.[] | .Name + ":" + .IPv4Address'      -  IP individually  

![image](https://user-images.githubusercontent.com/43002915/145741136-e423ca0a-2001-4f0a-8ad7-1ddd43a4a7d7.png)  

![image](https://user-images.githubusercontent.com/43002915/145741341-a83bfa0b-67bd-439e-9632-40c999f33200.png)  

![image](https://user-images.githubusercontent.com/43002915/145741526-82b794ca-739e-425e-8107-60c226560bd5.png)  

![image](https://user-images.githubusercontent.com/43002915/145741613-8fcaaa0b-0dce-4792-86d3-73dd8f9c2866.png)  
