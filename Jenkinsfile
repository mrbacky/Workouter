pipeline {
    agent any
    stages {
        stage("Build application") {
            steps {
                sh "dotnet build src/Workouter.sln"
                sh "docker build . -t mrbacky/workouter"
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'DockerHub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']])
                {
                    sh 'docker login -u ${USERNAME} -p ${PASSWORD}'
                }
                sh "docker push mrbacky/workouter"
            }
        }
        stage("Release to staging") {
            steps {
                sh "docker-compose pull"
                sh "docker-compose up -d"
            }
        }
    }
}