pipeline {
    agent any

    stage {
        stage('Build') {
            steps {
                echo 'Construir ou Resolver Dependencias!'
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