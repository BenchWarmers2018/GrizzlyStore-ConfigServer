pipeline {
   agent any
   stages {
      stage('Compile Stage') {
         steps {
            echo 'Compiling project'
            sh 'mvn clean compile -DskipTests=true'
         }
      }
      stage('Test Stage') {
         steps {
            echo 'Running tests'
            sh 'mvn test'
         }
      }
      stage('Package Stage') {
         steps {
            echo 'Packaging project'
            sh 'mvn clean package'
         }
      }
      stage('Deployment Stage') {
         steps {
            sh '/var/lib/jenkins/scripts/grizzlystore_configserver.sh'
            sh '/var/lib/jenkins/scripts/grizzlystore_namingserver.sh'
            sh '/var/lib/jenkins/scripts/grizzlystore_apigateway.sh'
            sh '/var/lib/jenkins/scripts/grizzlystore_user.sh'
            sh '/var/lib/jenkins/scripts/grizzlystore_item.sh'
            sh '/var/lib/jenkins/scripts/grizzlystore_order.sh'
            sh '/var/lib/jenkins/scripts/grizzlystore_googleuser.sh'
         }
      }
   }
}
