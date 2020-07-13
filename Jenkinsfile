pipeline {
    agent {
        docker {
            image 'ruby'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Construir ou Resolver Dependencias!'
                sh 'gem install nokogiri -v 1.10.10'
                sh 'bundle install'
                
            }
        }
        stage('Test') {
            steps {
                echo 'Rodando testes de regressao'

            }
        }
        stage('UAT') {
            steps {
                echo 'Esperar por aceitacao do usuario'
                input(message: 'Ir para producao?', ok: 'Sim')
            }
        }
        stage('Prod') {
            steps {
                echo 'WebApp esta pronto!'
            }
        }
    }
}