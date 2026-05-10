// Declarative Pipeline --> structured
// Scripted Pipeline --> flexible, more control, but less readable
// Pipeline as Code --> Jenkinsfile stored in source control --> Groovy Scripting
// Checkout --> Dependency Install --> Code Compile --> Unit Testing --> Code quality scan --> Security scan
// --> Docker Build --> push to repository --> Deploy to Dev --> Integration Test
// --> Approval --> Deploy to Production --> Notification
pipeline {
    agent any
    tools {
        maven "Maven 3.6.3"
        jdk "JDK 11"
    }

    environment {
        // Define environment variables
        MAVEN_OPTS = "-Xmx1024m"
        APP_ENV = "production"
    }
    stages {
        stage("Git Checkout"){
            steps {
                git url: "https://github.com/example/repo.git", branch: "main"
            }
            when {
                branch "main"
            }
        }

        stage("Build"){
            steps {
                // Build commands
                script {
                    // Groovy code for build logic
                    def name == "Build Stage"
                    echo "Executing ${name}"
                }
            }
        }
        parallel {
            stage("UNIT Test"){
            steps {
                // Test commands
                script {
                    // Groovy code for test logic
                    def name == "Test Stage"
                    echo "Executing ${name}"
                }
            }
        }

            stage("Integration test") {
                steps {
                    // Integration test commands
                    script {
                        // Groovy code for integration test logic
                        def name == "Integration Test Stage"
                        echo "Executing ${name}"
                    }
                }
        }

        }

        stage("Deploy"){
            steps {
                // Deploy commands
                script {
                    // Groovy code for deploy logic
                    def name == "Deploy Stage"
                    echo "Executing ${name}"
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline completed"
        }
        success {
            echo "Pipeline succeeded"
        }
        failure {
            echo "Pipeline failed"
        }
    }
}