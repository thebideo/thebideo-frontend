pipeline {
    node {

        stage('Checkout') {
            checkout scm
        }
        
        stage('Setup') {
            dir('build') {
                sh "chmod +x *"
                sh './setup.sh'
            }
        }

        stage('Download Files') {
            def downloads = [:]
            def base_mp3_url = 'https://bideo.podbean.com/mf/download'
            def mp3_URLs = ['/2gkji7/whateverbideo.mp3','/s3ry7b/The_Bideo_Ep1.mp3','/qv69yf/The_Bideo_Ep2.mp3','/ja6dyu/Bideo_EP3.mp3',
                            '/2eiibh/Bideo_EP4.mp3','/s2cqx7/Bideo_Ep5.mp3','/vijemv/The_Bideo_Episode_8-2.mp3','/gf5id2/The_Bideo_BotWQuickcast.mp3',
                            '/zcv2cz/The_Bideo_Episode_10.mp3','/uqbf4m/The_Bideo_Just_Noah_and_Steve.mp3','/qc5rq6/TheBideo15.mp3',
                            '/2bxcu7/The_Bideo_16.mp3','/p3rm2y/Bideo_17.mp3','/3tikac/Bideo18.mp3','/2hcikn/The_Bideo_13.mp3','/usrr4y/135.mp3',
                            '/9gjrt6/The_Bideo_14.mp3','/gn3kid/Bideo_15.mp3','/qzj2k7/Bideo16.mp3','/p3rm2y/Bideo_17.mp3','/d959na/Bideo_18.mp3',
                            '/uaigcn/bideo19.mp3','/kzxhya/Bideo_Goty_2017.mp3','/as8hpt/Bideo20.mp3','/b2f3c2/Bideo21.mp3','/8bdjp9/Bideo22-1.mp3',
                            '/9fstn3/Bideo23.mp3','/2gkji7/whateverbideo.mp3']
        
            for( item in mp3_URLs ) {
                def mp3 = item
                downloads[item] = {
                    node {
                        sh "wget -nc -P /usr/share/nginx/thebideo/mp3/ ${base_mp3_url}${mp3}"
                    }
                }
            }
            parallel downloads
        }

        stage('Build') {
            dir('build') {
                sh './build.sh'
            }
        }

        stage('Deploy') {
            dir('build') {
                sh './publish.sh'
            }
        }
    }
    post { 
        always { 
            cleanWs()
        }
    }
}