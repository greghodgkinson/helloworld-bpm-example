pipeline {	
     agent {	
    	
    	label 'buildconductor-bpm'	
    //    docker { 	
    //      image 'greghodgkinson/jenkins-buildconductor-bpm'                 	
    //    }	
    }	
    	
    stages {     	
        	
        stage('Build') {      	
        	
            steps {	
                               	
            	sh '/buildconductor/bpm/run-automation.sh build HW 0.69 Main 10.0.10.166 20005 ghodgkinson ghodgkinson Staging ghodgkinson passw0rd ${BUILD_NUMBER} ${BUILD_URL} ${NODE_NAME}'               	
            }	
        }	
        	
        stage('Publish to UCD') {	
        	steps {	
        		
        	sh 'echo "Can we see the offline package file?"'   	
        	sh 'ls -la ${WORKSPACE}/output'   	
        	sh '/buildconductor/bpm/run-automation.sh uploadToUcd "HelloWorld Process App BPM8.5" ${BUILD_NUMBER} ${WORKSPACE}/output *.zip admin admin ${BUILD_URL} https://10.0.10.47:8446'            	
            }                        	 		
        }	
    }	
} 