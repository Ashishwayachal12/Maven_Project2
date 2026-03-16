pipeline {
	    agent {label "kali"}
	
	    stages {
	
	        stage('Hello') {
	            steps {
	                echo 'Hello Buddy!'
	            }
	        }
	
	        stage('Git clone') {
	            steps {
	                git url: "https://github.com/Ashishwayachal12/Maven_Project2.git", branch: "master"
	                echo "Code cloning successful"
	            }
	        }
	
	        stage('Maven Build') {
	            steps {
	                sh 'mvn clean install'
					// sh  'mvn package -DskipTests'
	            }
	        }
	
	        stage('Run Jar') {
	            steps {
	               sh ''' 
                    mv target/*.jar app.jar
                     java -jar app.jar'''
	            }
	        }
	
	        stage('Clean workspace') {
	            steps {
	                cleanWs()
	            }
	        }
	    }
	}
