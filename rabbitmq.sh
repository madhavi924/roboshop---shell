echo -e "\e[36m>>>>>> setup erlang repo <<<<<<<\e[0m"
curl -s https://packagecloud.io/install/repositories/rabbitmq/erlang/script.rpm.sh | bash

echo -e "\e[36m>>>>>> setup rabbitmq repos <<<<<<<\e[0m"yum install erlang -y
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | bash

echo -e "\e[36m>>>>>> install erlang & rabbitmq <<<<<<<\e[0m"
yum install rabbitmq-server -y

echo -e "\e[36m>>>>>> start rabbit mq service <<<<<<<\e[0m"
systemctl enable rabbitmq-server
systemctl start rabbitmq-server

echo -e "\e[36m>>>>>> add application user in rabbitmq <<<<<<<\e[0m"
rabbitmqctl add_user roboshop roboshop123
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"
