node{
	stage('SCM Checkout'){
		git branch: 'smtpjenkins', url: 'https://github.com/prabhatpankaj/devopsprojects.git'
	}
	stage('Compile-Package'){
		def mvnHome = tool name: 'maven-3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
	}
	stage('Deploy to Tomcat'){
		sshagent(['tomcat-server']) {
		sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@18.232.131.59:/opt/tomcat9/webapps/'
		}
	}
	stage('Email Notification'){
	mail bcc: '', body: 'nice to have sendGrid', cc: 'freshlink4@yahoo.com', from: 'freshlink4@gmail.com', replyTo: 'smtpjenikins', subject: 'THis is from jenkins ', to: 'freshlink4@gmail.com'
	}

}
