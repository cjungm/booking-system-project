pipeline {
  agent any
  stages {
    stage('Git clone') {
      steps {
        git(url: 'https://github.com/bsp-incubation/AMI_API.git', branch: 'master')
      }
    }

    stage('Image Build') {
      steps {
        sh '''cd /var/lib
./packer build -var-file=/var/lib/jenkins/workspace/var.json /var/lib/jenkins/workspace/back_ami_master/AMI-API/packer/back_ami_build.json'''
      }
    }

  }
}