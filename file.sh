yum install java-1.8.0-openjdk.x86_64 -y
sudo cp /etc/profile /etc/profile_backup
echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile
echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile
source /etc/profile
echo $JAVA_HOME
echo $JRE_HOME

#------------starting jenkins installation------------------------
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
service jenkins restart


#------------unlock jenkins and create admin user in jenkins-------
mkdir /var/lib/jenkins/init.groovy.d
cp Automate.txt /var/lib/jenkins/init.groovy.d/basic-security.groovy
service jenkins restart