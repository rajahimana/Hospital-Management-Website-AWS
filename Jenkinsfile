pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                script {
                    def scmSource = resolveScm source: [$class: 'GitSCMSource', 
                                                        credentialsId: 'Github', 
                                                        id: '_', 
                                                        remote: 'https://github.com/rajahimana/Hospital-Management-Website-AWS.git', 
                                                        traits: [gitBranchDiscovery()]], 
                                            targets: ['']
                    checkout(scmSource)
                }
            }
        }
        // Additional stages like Build, Test, Deploy would follow here
    }
}
