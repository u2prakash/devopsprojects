node{
	stage('SCM Checkout'){
		git branch: 'smtpjenkins', url: 'https://github.com/u2prakash/devopsprojects.git'
	}
	stage('Compile-Package'){
		def mvnHome = tool name: 'mymaven-3.5.4', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
	}
	
	stage('Email Notification'){
	mail bcc: '', body: 'nice to have sendGrid', cc: 'freshlink4@yahoo.com', from: 'freshlink4@gmail.com', replyTo: 'smtpjenikins', subject: 'THis is from jenkins ', to: 'freshlink4@gmail.com'
	}

}
