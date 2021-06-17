#!/bin/bash

DG=$(jq ".deploymentGroupId" dg-output.json -r)
echo "Start deploying on [$DG]..."
aws deploy create-deployment \
    --application-name Devops_back \
    --deployment-config-name CodeDeployDefault.AllAtOnce \
    --deployment-group-name $DG \
    --s3-location bundleType="tar",bucket="landingproject",key=back.tar \
    --file-exists-behavior "OVERWRITE"
