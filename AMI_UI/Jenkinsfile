pipeline {
  agent any
  stages {
    stage('Git clone') {
      steps {
        git 'https://github.com/bsp-incubation/AMI_UI.git'
      }
    }

    stage('Image Build') {
      steps {
        sh '''cd /var/lib
./packer build -var-file=/var/lib/jenkins/workspace/var.json /var/lib/jenkins/workspace/front_ami_master/AMI-UI/packer/front_ami_build.json'''
      }
    }

  }
}