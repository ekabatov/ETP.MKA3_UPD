@Library('smsoft-libs')_

pipeline	{
   options {
        buildDiscarder logRotator(numToKeepStr: '3')
        disableConcurrentBuilds()
    }
    agent any


	parameters {
        booleanParam(defaultValue: false, description: 'поставь галку для создания очередей', name: 'deploy_queue')
        booleanParam(defaultValue: false, description: 'поставь галку для применения конфига nginx', name: 'deploy_nginx')
        booleanParam(defaultValue: false, description: 'поставь галку для деплоя конфига restproxy', name: 'deploy_restproxy')

	}
	tools {
			maven 'mvn'
			jdk 'jdk1.8.0_91'
	}
	stages	{
		stage ('Initialize') {
			steps {
				sh '''
					echo "PATH = ${PATH}"
					echo "M2_HOME = ${M2_HOME}"
				'''
			}
		}
        stage('deploy queue') {
            when {
                expression { BRANCH_NAME ==~ /(master|develop)/ }
                anyOf {
      				changeset "**/mqsc/**"
					environment name: 'deploy_queue', value: 'true'
      		    }
            }
            steps {
				deployQueueWmq()
            }
        }
        stage('deploy nginx config') {
            when {
                expression { BRANCH_NAME ==~ /(master|develop)/ }
            anyOf {
                    changeset "**/nginx/**"
            environment name: 'deploy_nginx', value: 'true'
                       }
                      }
              steps {
          deployNginxConf()
            }
        }
    stage('deploy restproxy config') {
        when {
            expression { BRANCH_NAME ==~ /(master|develop)/ }
        anyOf {
                changeset "**/restproxy/**"
        environment name: 'deploy_restproxy', value: 'true'
                   }
                  }
          steps {
      deployRestproxyConfig()
        }
    }

  	}
}
