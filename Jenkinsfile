pipeline
{
    agent {
      label 'maven'
    }
     stages {
        stage("Checkout") {
      	steps {
          checkout([$class: 'GitSCM',
          branches: [[name: '*/deploy']],
          extensions: [],
          userRemoteConfigs: [[url: 'https://github.com/mistryparas/irobot-world.git']]]
          )
        }
      }
      stage("Build") {
        steps {
           sh  '''mvn --version ; mvn clean package '''
        }
      }
    
    
    }

}