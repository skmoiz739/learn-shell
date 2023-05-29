echo -e "\e[33m installing nginx \e[0m
yum install nginx -y &>>/tmp/roboshop.log

echo -e "\e[33m removing files \e[0m
rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log

echo -e "\e[33m downloading files \e[0m
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/roboshop.log

echo -e "\e[33m extract files \e[0m
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

echo -e "\e[33m start nginx \e[0m
systemctl enable nginx
systemctl start nginx
systemctl restart nginx