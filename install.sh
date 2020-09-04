echo 'Installing OpenJDK ...'
sudo apt update
sudo apt install openjdk-11-jdk
java -version

echo 'Installing Jenkins ...'
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
deb https://pkg.jenkins.io/debian-stable binary/

sudo apt-get update
sudo apt-get install jenkins

echo 'Start Jenkins service ...'
sudo systemctl start jenkins
sudo systemctl status jenkins

echo 'Open 8080 port ...'
sudo ufw allow 8080
  
