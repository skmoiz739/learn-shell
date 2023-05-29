echo -e "\e[33m copying mongodb repo \e[0m"
cp mongodb.repo /etc/yum.repos/mongodb.repo &>>/tmp/roboshop.log &>>/tmp/roboshop.log
echo -e "\e[33m installing mongodb repo \e[0m"
yum install mongodb-org -y &>>/tmp/roboshop.log
#need to modify adress
echo -e "\e[33m restarting mongodb \e[0m"
systemctl enable mongod &>>/tmp/roboshop.log
systemctl restart mongod &>>/tmp/roboshop.log
