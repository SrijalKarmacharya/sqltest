pipeline {
    agent any
    
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
          
         
            sh '''
            echo $TAG_NAME
                       '''
              
          
        }
      }
    }
        
    }
}
