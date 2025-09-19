
 sudo setenforce 0
 sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
 sudo swapoff -a
 sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
 
 


 sed -i '/::/d' /etc/hosts
 sed -i 's/permissive/disabled/g' /etc/selinux/config

 echo "datahub ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

 echo "192.168.1.40 lab.micasa.com nodo" >> /etc/hosts

 chkconfig firewalld off
 service firewalld stop

 groupadd datahub
 useradd datahub -g datahub
 
 id datahub
 
 yum update -y
 
 
 sssd

 dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
 dnf install docker-ce -y

 systemctl start docker
 systemctl enable docker

 sssd
 usermod -a -G docker datahub

 dnf install -y curl

 #curl -L "https://github.com/docker/compose/releases/download/v2.32.2/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose

 chmod +x /usr/local/bin/docker-compose

 yum -y install jq
 yum -y install wget
 #curl -L https://github.com/kubernetes/kompose/releases/download/v1.34.0/kompose-linux-amd64 -o kompose
 #chmod +x kompose
 #sudo mv ./kompose /usr/local/bin/kompose
 
 wget https://github.com/cli/cli/releases/download/v2.79.0/gh_2.79.0_linux_amd64.tar.gz
 gunzip gh_2.79.0_linux_amd64.tar.gz
 


 yum localinstall gh_*_linux_amd64.rpm -y
