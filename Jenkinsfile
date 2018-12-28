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
	stage('Slack Notification'){
	slackSend baseUrl: 'https://hooks.slack.com/services/', channel: '#devops', color: '#439FE0', message: 'Build Started: "${env.JOB_NAME}" "${env.BUILD_NUMBER}"', teamDomain: 'devops-dxa2539', tokenCredentialId: 'slack-secret'
	}

}