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
       stage("Version update") {
            steps {
               sh  '''
               sed -i "s/myproject/irobot-project/g" ${WORKSPACE}/pom.xml 
               sed -i "s/0.0.1-SNAPSHOT/2.0.${BUILD_NUMBER}-SNAPSHOT/g" ${WORKSPACE}/pom.xml '''
            }
        }
      stage("Build") {
        steps {
           sh  '''mvn clean package '''
        }
      }
      stage("Env create") {
        steps {
          sh ''' mkdir -p pkg
          mv target/irobot-project-*.jar pkg/irobot-project.jar
          '''
        }
      }
      stage ("Docker Build") {
        steps {
          sh ''' docker build -t irobot-docker-demo:2.\${BUILD_NUMBER} .'''
        }
      }
    
    }

}