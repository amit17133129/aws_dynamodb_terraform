pipeline {
    agent any
    stages {
        stage('github') {
            steps {
            git 'https://github.com/amit17133129/git_practice.git'
            }
        }
        stage('change directory') {
            steps {
                sh 'sudo      echo  `"$(cat /var/lib/jenkins/workspace/email/date) ${dir}"`'
            }
        }
        stage('sleep') {
            steps {
                sh 'sudo sleep 10'
            }
        }
    }
    
         post {  
             
         success {  
           mail bcc: '', body: 'Hey, your job has ran successfully keep innovating.', cc: '', from: '', replyTo: '', subject: 'Job Succeeded from multi branch', to: 'amitsharma13317@gmail.com'  
         }  
         failure {  
             mail bcc: '', body: 'Hey, your job has failed. When you will up. Report to the office.', cc: '', from: '', replyTo: 'Job Failed from multi branch Need to Up', subject: '', to: 'amitsharma13317@gmail.com'
         }  
//         unstable {  
//             echo 'This will run only if the run was marked as unstable'  
//         }  
//         changed {  
//             echo 'This will run only if the state of the Pipeline has changed'  
//             echo 'For example, if the Pipeline was previously failing but is now successful'  
//         }  
     } 

}
