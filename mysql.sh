echo -e "\e[36m>>>>>> disable mysql 8 version  <<<<<<<\e[0m"
dnf module disable mysql -y

echo -e "\e[36m>>>>>> copy mysql repo file <<<<<<<\e[0m"
cp /home/centos/roboshop---shell/mysql.repo /etc/yum.repos.d/mysql.repo

echo -e "\e[36m>>>>>> install mysql <<<<<<<\e[0m"
yum install mysql-community-server -y

echo -e "\e[36m>>>>>> statrt mysql <<<<<<<\e[0m"
systemctl enable mysqld
systemctl start mysqld
echo -e "\e[36m>>>>>> reset mysql password <<<<<<<\e[0m"
mysql_secure_installation --set-root-pass RoboShop@1
