pipeline {
    agent any
    parameters {
        choice(name: 'Action', choices: 'init\nplan\nplan-destroy\napply\ndestroy', description: 'Select Action')
        choice(name: 'Env', choices: 'dev\ntest', description: 'select environment')
    }

    stages {
    stage('IAC') {
            environment {
                LAYER = "${params.Env}"
                INFRA_ACTION = "${params.Action}"
            }
		        steps {
                script {
                    sh 'chmod +x infra.sh'
                    sh './infra.sh'
                }
            }
        }
}//stages
}//pipeline
