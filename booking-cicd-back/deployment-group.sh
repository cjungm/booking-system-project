#!/bin/bash
echo "Creating a new deployment group..."
aws deploy create-deployment-group \
    --application-name Devops_back \
    --deployment-group-name awscli_back \
    --service-role-arn arn:aws:iam::144149479695:role/landingproject_codeDeploy_codeDeploy \
    --auto-scaling-groups API-asg \
    --deployment-style deploymentType="BLUE_GREEN",deploymentOption="WITH_TRAFFIC_CONTROL" \
    --blue-green-deployment-configuration terminateBlueInstancesOnDeploymentSuccess={action="TERMINATE"},deploymentReadyOption={actionOnTimeout=CONTINUE_DEPLOYMENT},greenFleetProvisioningOption={action=COPY_AUTO_SCALING_GROUP} \
    --load-balancer-info targetGroupInfoList={name=hyuck-BlueGreen} \
    --deployment-config-name CodeDeployDefault.AllAtOnce > dg-output.json
