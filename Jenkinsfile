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
}