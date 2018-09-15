node {
    stage('Checkout') {
        checkout scm
    }
    
    stage('Build') {
        sh 'bundle exec install'
        sh 'sass ./_sass/main.scss main.css'
    }

    stage('Deploy') {
        def webdir = '/opt/thebideo-frontend/'
        def backupdir = '/opt/backup_thebideo-frontend/'
        echo 'Cleaning up backup dir'
        sh "rm -rf $backupdir*"
        echo 'Backing up'
        sh "mv $webdir/* $backupdir"
        echo 'Deploying'
        sh "cp -r * $webdir"
        echo 'Done!'
    }
}