pipeline {
    agent any
    
    environment {
    registryCredential = 'docker_id'
        
  }
    stages {
        stage('---clean---') {
            steps {
                sh "mvn clean"
            }
        }
        stage('---test---'){
          steps {
          sh "mvn test"
          }
        }
        stage('---package---'){
        steps{
        sh "mvn package"
        }
        }
        
        stage('Release Tag') {
      when{
     
        expression {
    env.TAG_NAME != null
          
    }
      }
      steps {
        script {
          
          docker.withRegistry( '', registryCredential ) {
            sh '''
            mvn package
            '''
              
           }
        }
      }
    }
        
    }
}
