pipeline {
    agent {
	        label 'maven'
}
 stages {
        stage("Checkout") {
          git url: "https://github.com/mightysoul/postgresqlapp.git", branch: "master"
        }
        stage("Build JAR") {
          sh "mvn clean package -DskipTests"
          stash name:"jar", includes:"target/TEST.jar"
        }
	}
}