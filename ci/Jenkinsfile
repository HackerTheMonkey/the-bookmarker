pipeline{
  agent { docker { image 'maven:3.3.3'}}
  stages {
    stage('build the thing') {
      steps {
        sh 'mvn --version'
      }
    }
  }
}
