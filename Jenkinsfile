pipeline{
    agent any
    stages{
 
        stage("Git Checkout "){
            steps {
                git branch: 'main',
                credentialsId: '6bc8f840-c1ae-4a4d-aea0-af92ab6f29f7',
                url: 'git@github.com:rupinder-on-github/terraform-cicd.git'
            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
        stage("Terraform Init and Plan"){
            steps {
                echo "Executing Terraform"
                sh 'cd _example/basic_example/'
                sh 'sudo terraform init'
            }
            post{
                always{
                    echo "====++++always++++===="
                }
                success{
                    echo "====++++A executed successfully++++===="
                }
                failure{
                    echo "====++++A execution failed++++===="
                }
        
            }
        }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
}
