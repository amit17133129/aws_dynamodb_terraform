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
        stage('email') {
            steps {
            mail bcc: '', body: 'Hey, your job has failed. When you will up. Report to the office.', cc: '', from: '', replyTo: '', subject: 'Job Failed Need to Up', to: 'amitsharma13317@gmail.com'
            }
                
        }
    }

}
