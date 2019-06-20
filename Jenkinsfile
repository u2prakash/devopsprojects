node{
	stage('SCM Checkout'){
		git branch: 'wartomcat', url: 'https://github.com/u2prakash/devopsprojects.git'
	}
	stage('Compile-Package'){
		def mvnHome = tool name: 'mymaven', type: 'maven'
		sh "${mvnHome}/bin/mvn package"
	}
	stage('Deploy to Tomcat'){
		sshagent(['tomcat-server']) {
		sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@ec2-54-145-167-189:/opt/tomcat9/webapps/'
	}
	}
}
