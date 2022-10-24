

pipeline {
    agent any
    stages {
        stage("Copy files to ansible_server") {
            steps {
                script {
                    echo "Copying all necessary file to ansible server"
                    sshagent(['SSH_Key']) {
                    sh "scp -o StrictHostKeyChecking=no Creating_ansible_Server/Ansible/* ec2-user@18.134.143.29:/home/ec2-user"
                    withCredentials([sshUserPrivateKey(credentialsId: 'SSH_Key', keyFileVariable: 'Jenkins_server', usernameVariable: 'user')]) {
                    sh 'scp -o StrictHostKeyChecking=no $Jenkins_server ec2-user@18.134.143.29:/home/ec2-user/Jenkins_server.pem' //using single quotes so that groovy interpreter does not expose the on the command line
                                                                                                                                                }
                                            }
                }
            }
        }
        stage("execute ansible playbook to configure ec2-Instances") {
            steps {
                script {
                    echo "executing ansible playbook"
                    sshagent(['SSH_Key']) {

                                                                                                            }                                                                                        }
                                            }
                }
            }
        }
        
    }   
}
