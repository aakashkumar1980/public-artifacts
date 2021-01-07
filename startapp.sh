#!/bin/bash
read -e -p "Profile[dev/sit]: " -i "dev" profile
read -e -p "Server Hosting Region: " -i "MUMBAI" region
read -e -p "Database Server DNS/IP: " -i "35.154.16.12" databaseServerDNS

sudo java -jar -Dspring.profiles.active=$profile -Dserver.hosting.region=$region -Ddb.hostname=$databaseServerDNS sample-restapi.jar
