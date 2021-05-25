#!/bin/bash
sudo mv /home/ec2-user/front/scripts/devops_router.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start devops_router.service
sudo systemctl enable devops_router.service
sudo systemctl restart devops_router.service
