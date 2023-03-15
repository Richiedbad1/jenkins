pipeline {
    agent any
    stages {
        stage("init") {
            steps {
                echo "initializing..."
            }
        }
        
        stage("build image") {
            steps {
                script {
                    echo "building image..."
                    withCredentials([usernamePassword: 'docker-credentials', passwordVariable: 'PWD', usernameVariable: 'USER'])
                    sh 'docker build -t rulz99/my-app:v1.0-demo'
                    sh echo $PWD | docker login -u $USER --password-stdin
                }
            }
        }

        stage("echo") {
            steps {
                echo "This is the end"
            }
        }
    }
}
