pipeline {
    agent any
    tools {
  maven 'Maven'
  }
    stages {
        stage('git check out') {
            steps {
            git 'https://github.com/kumar866/myrepofornovonline.git'
            }
        }
       stage ('Build') {
      steps {
      sh 'mvn clean install -f MyWebApp/pom.xml'
          }
        }
        stage ('JaCoCo') {
      steps {
      jacoco()
          }
        }
        stage("doker bulid image"){
            steps{
                sh "docker build -t kumarramya/mywebapp:1 ."
            }
        }
        stage("docker push and login"){
            steps{
                script { 
                    withCredentials([string(credentialsId: 'Docker_Hub_Pwd', variable: 'Docker_Hub_Pwd')]) {
                     sh "docker login -u kumarramya -p ${Docker_Hub_Pwd}"
                     } 
                      sh "docker push kumarramya/mywebapp:1 "
                }
            }
        }
    }
}
