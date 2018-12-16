node{
	stage('SCM Checkout'){
		git branch: 'wartomcat', url: 'https://github.com/prabhatpankaj/devopsprojects.git'
	}
	stage('Compile-Package'){
		def mvnHome = tool name: 'maven-3', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
	}
	stage('Deploy to Tomcat'){
		sshagent(['pem-tomcatser']) {
		sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@54.209.176.200:/opt/tomcat9/webapps/'
	}
	}
	stage('Email Notification'){
	mail bcc: '', body: 'This is body', cc: '', from: 'prabhatiitbhu@gmail.com', replyTo: 'prabhatiitbhu@gmail.com', subject: 'This is Subject', to: 'prabhat@aptence.com'
	}

}