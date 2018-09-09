node {
    stage('Checkout') {
        checkout scm
    }
    
    stage('Deploy') {
        def homedir = '/opt/thebideo-frontend/'
        sh 'echo $homedir/*'
        sh 'echo * $homedir'
    }
}