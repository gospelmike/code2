pipeline {
    tools {
     maven 'M3_HOME'
    }
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'release', url: 'https://github.com/gospelmike/code2'
            }
        }
        stage('Build') {
            steps {
               sh 'mvn clean install package'
            }
        }
        stage('Deploy') {
            steps {
               deploy adapters: [tomcat8(credentialsId: 'Tomcat', path: '', url: 'http://3.88.23.99:8080')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
