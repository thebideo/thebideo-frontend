node {
    stage('Checkout') {
        checkout scm
    }
    
    stage('Deploy') {
        def homedir = '/opt/thebideo-frontend/'
        sh 'rm -rf $homedir/*'
        sh 'cp * $homedir'
    }
}