pipeline { 
    tools {
     maven 'M2_HOME' 
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
               deploy adapters: [tomcat7(credentialsId: 'Tomcat', path: '', url: 'http://192.168.0.170:8081')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
