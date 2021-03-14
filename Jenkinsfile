pipeline{
    agent any
    stages{
        stage("Git Checkout "){
            steps {
                git branch: 'main',
                credentialsId: '6bc8f840-c1ae-4a4d-aea0-af92ab6f29f7',
                url: 'git@github.com:rupinder-on-github/terraform-cicd.git'
            }
        }
        stage("Terraform Init and Plan"){
            steps {
                echo "Executing Terraform"
                sh 'terraform init'
            }
        }
    }
}

