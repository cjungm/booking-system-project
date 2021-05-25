sudo systemctl stop devops_front devops_router 
chmod 777 /home/ec2-user/front --recursive
chown ec2-user:ec2-user /home/ec2-user/front --recursive
rm -rf /home/ec2-user/front
