pipeline {
    agent {
	        label 'maven'
}
 stages {
        stage("Checkout") {
          steps {
          git url: "https://github.com/mightysoul/postgresqlapp.git", branch: "master"
        }}
        stage("Build JAR") {
          steps {
          sh "mvn clean package -DskipTests"
          stash name:"jar", includes:"target/TEST.jar"
        }}
        stage("Build Docker Image") {
          steps {
            unstash name:"jar"
            sh "oc start-build postgresql-docker --from-file=target/TEST.jar -n myproject"
               }}
        stage("Verify Build") {
            steps {
                timeout(time: 20, unit: 'MINUTES') {
             build job : 'checkbuild' 
          }
            }
        }
       }
    }