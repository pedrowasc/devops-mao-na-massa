#/usr/bin/bash
useradd sonar 
sudo yum update
sudo yum install wget java-11-openjdk-devel unzip -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip
unzip sonarqube-9.4.0.54424.zip -d /opt/
mv /opt/sonarqube-9.4.0.54424  /opt/sonarqube
chow -R sonar:sonar /opt/sonarqube 
touch /etc/systemd/system/sonar.service
echo > /etc/systemd/system/sonar.service
cat <<EOT >> /etc/systemd/system/sonar.service
[Unit]
Description=Sonarqube service
After=syslog.target network.target
[Service]
type=forking
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start 
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
User=sonar
Group=sonar
Restart=always
[Install]
WantedBy=multi-user.target
EOT
service sonar start

#instalar sonar Scanner


wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.7.0.2747-linux.zip
unzip sonar-scanner-cli-4.7.0.2747-linux.zip d /opt/



