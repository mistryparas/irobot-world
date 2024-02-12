pipeline
{
        agent { label 'Docker' }
        stages
            stage("CheckOut") {
      	steps {
          checkout([$class: 'GitSCM',
          branches: [[name: '*/nginx']],
          extensions: [],
          userRemoteConfigs: [[url: 'https://github.com/mistryparas/irobot-world.git']]]
          )
        }
      }
}