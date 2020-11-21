pipeline {
 agent any
 
 stages {
     stage('checkout') {
         steps {
             git branch: 'master', url: 'https://github.com/sonikaagrawal/azure-tf.git/'
         }
     }
     stage('Set Terraform path') {
         steps {
             script {
                 def tfHome = tool name: 'MyTerraform'
                 env.PATH = "${tfHome}:${env.PATH}"
                 
             }
             
         }
     }
stage('Provision infrastructure') {
      steps {
             dir('dev')
             {
              sh 'terraform init'
              sh 'terraform plan -out=plan'
//	  sh 'terraform destroy -auto-approve'
               sh 'terraform apply plan'
              }
         }
      }
 //   stage('Provision infrastructure-DR') {
 //                steps {
  //           dir('terraform-main-DR')
  //           {
 //            sh 'terraform init'
 //            sh 'terraform plan -out=plan'
//	  sh 'terraform destroy -auto-approve'
 //             sh 'terraform apply plan'
//             }
  //       }
    // }
 }
}

