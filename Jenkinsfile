pipeline{
    agent any
    parameters {
        booleanParam(name: 'InstanceEnabled', defaultValue: true , description: 'vcenter data center',)
        string(name: 'InstanceCount', defaultValue: "" , description: 'data center cluster',)
    }
    stages{
        stage("Git Checkout "){
            steps {
                git branch: 'main',
                credentialsId: '6bc8f840-c1ae-4a4d-aea0-af92ab6f29f7',
                url: 'git@github.com:rupinder-on-github/terraform-cicd.git'
            }
        }
        stage("Terraform Init"){
            steps {
                echo "Executing Terraform"
                sh 'terraform init'
            }
        }
        stage("Terraform Plan"){
            steps {
                echo "Executing Terraform"
                sh '''
                terraform plan \
                 -var 'instance_enabled=$(InstanceEnabled)'
                 -var 'instace_count=$(InstanceCount)'
                 '''
            }
        }
    }
}

