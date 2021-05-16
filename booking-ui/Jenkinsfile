pipeline {
  agent any
  stages {
    stage('Git clone') {
      steps {
        git(url: 'https://github.com/bsp-incubation/booking-ui.git', branch: 'master', credentialsId: 'hanju_key', poll: true)
        sh '''#!/bin/bash
EXTERNALPOINT=$(jq ".value" ../front.json -r)
INTERNALPOINT=$(jq ".value" ../front1.json -r)
pwd
jq -n --arg URL "$EXTERNALPOINT" --arg MYIP "$INTERNALPOINT" \\
\'{url: $URL, myip: $MYIP}\' > ../url.json'''
      }
    }

    stage('Compress') {
      steps {
        sh '''if [ -f front.tar ]
then
    rm front.tar
fi
tar -cvf front.tar --exclude=\'.git/*\' .'''
      }
    }

    stage('S3 Upload') {
      steps {
        sh '''aws s3 rm s3://landingproject/front.tar
aws s3 cp ./front.tar s3://landingproject/front.tar'''
      }
    }

    stage('Create Deployment') {
      when {
        branch 'feature1'
      }
      steps {
        sh '''aws deploy create-deployment \\
    --application-name CRBS-codedeploy-app \\
    --deployment-config-name CodeDeployDefault.AllAtOnce \\
    --deployment-group-name $DG_NAME \\
    --s3-location bundleType="tar",bucket="landingproject",key=front.tar \\
    --file-exists-behavior "OVERWRITE"
'''
      }
    }

  }
  environment {
    DG_NAME = 'CRBS-UI-deployment-group1'
  }
}