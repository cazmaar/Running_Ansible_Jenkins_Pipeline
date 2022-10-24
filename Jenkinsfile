

pipeline {
    agent any
    stages {
        stage("Copy files to ansible_server") {
            steps {
                script {
                    echo "Copying all necessary file to ansible server"
                    sshagent(['SSH_Key']) {
                    sh "cd /home/ec2-user && mkdir Ansible"
                    sh "scp -o StrictHostKeyChecking=no Creating_ansible_Server/Ansible/* ec2-user@18.134.143.29:/home/ec2-user/Ansible"
                    withCredentials([sshUserPrivateKey(credentialsId: 'SSH_Key', keyFileVariable: 'Jenkins_server', usernameVariable: 'user')]) {
                    sh "scp -o StrictHostKeyChecking=no $Jenkins_server ec2-user@18.134.143.29:/home/ec2-user/Jenkins_server.pem"
                                                                                                                                                }
                                            }
                }
            }
        }
        
    }   
}
