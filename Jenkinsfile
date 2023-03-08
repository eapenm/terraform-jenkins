pipeline{
    agent any
    environment{
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
         stage('S3 - create bucket'){
            steps{
                sh "ansible-playbook s3-bucket.yml"
                // script{
                //   createS3Bucket('terraform-eapenmani-kottayam')
                // }
            }
        }
        stage('terraform init and apply - dev'){
            steps{
                sh "sh returnStatus: true, script: 'terraform workspace new dev'"
                sh "terraform init"
                // sh "terraform apply -var-file=dev.tfvars -auto-approve"
                sh "ansible-playbook terraform.yml"
            }
        }
        stage('terraform init and apply - prod'){
        steps{
        sh "sh returnStatus: true, script: 'terraform workspace new prod'"
        sh "terraform init"
        // sh "terraform apply -var-file=prod.tfvars -auto-approve"
        sh "ansible-playbook terraform.yml -e app_env=prod"
        }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform-12', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
    return tfHome
}

// def createS3Bucket(bucketName){
//     sh returnStatus: true, script: "aws s3 mb s3://${bucketName} --region=us-east-1"
// }
