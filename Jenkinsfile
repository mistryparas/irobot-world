pipeline
{
    agent {
      label 'docker'
    }
     stages {
        stage("Checkout") {
      	    steps {
                checkout([$class: 'GitSCM',
                branches: [[name: '*/nginx']],
                extensions: [],
                userRemoteConfigs: [[url: 'https://github.com/mistryparas/irobot-world.git']]]
                )
            }
        }
        stage("update the nginx Version") {
            steps {
               sh  '''
               sed -i "s/MYVERSION/1.0.${BUILD_NUMBER}/g" index.html'''
            }
        }
        stage("Build") {
            steps {
                sh  '''docker build . -t nginx:1.0.${BUILD_NUMBER} '''
            }
        }
        stage ("Push Images") {
            steps {
                sh ''' docker login
                docker tag nginx:1.0.\${BUILD_NUMBER} mistryparas/devops-demo:v1.0.\${BUILD_NUMBER}
                docker push mistryparas/devops-demo:v1.0.\${BUILD_NUMBER} 
                '''
        }
      }
    }
}