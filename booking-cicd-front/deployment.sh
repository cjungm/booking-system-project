#!/bin/bash

DG=$(jq ".deploymentGroupId" dg-output.json -r)
echo "Start deploying on [$DG]..."
aws deploy create-deployment \
    --application-name Devops_front \
    --deployment-config-name CodeDeployDefault.AllAtOnce \
    --deployment-group-name $DG \
    --s3-location bundleType="tar",bucket="landingproject",key=front.tar \
    --file-exists-behavior "OVERWRITE"
