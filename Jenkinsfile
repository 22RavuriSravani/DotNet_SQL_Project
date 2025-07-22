pipeline {
    agent any

    environment {
        DOTNET_ROOT = "C:\\Program Files\\dotnet"
        PATH = "${env.PATH};C:\\Program Files\\dotnet"
    }

    stages {
        stage('Clone Project') {
            steps {
                echo "Using local workspace code..."
            }
        }

        stage('Restore & Build .NET Project') {
            steps {
                dir('src/DotNetApp') {
                    bat 'dotnet restore'
                    bat 'dotnet build --configuration Release'
                }
            }
        }

        stage('Execute SQL Script') {
            steps {
                bat '''
                        sqlcmd -S localhost\\SQLEXPRESS -d master -i sql\\init.sql -U sa -P 123456
                '''
            }
        }
    }
}
