pipeline {			
      agent {			
     			
     	label 'buildconductor-bpm'			
     //    docker { 			
     //      image 'greghodgkinson/jenkins-buildconductor-bpm'                 	      		
     //    }			
     }			
     			
     stages {   
           
           stage('Checkout'){
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: '/var/jenkins/workspace/helloworld-bpma-example/load']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/greghodgkinson/helloworld-bpma-example.git']]])
            }
          
       }     
         			
         stage('Build') {      			
         			
             steps {			
                                			
             	sh '/buildconductor/bpm/run-automation.sh buildBpel HelloWorldMediation ${BUILD_NUMBER} ${BUILD_URL} ${NODE_NAME}'               			
             }			
         }			
         			
         stage('Publish to UCD') {			
         	steps {			
         				
         	sh 'echo "Can we see the offline package file?"'   			
         	sh 'ls -la ${WORKSPACE}/output'   			
         	sh '/buildconductor/bpm/run-automation.sh uploadToUcd "HelloWorld Process App BPMStandard8.5" ${BUILD_NUMBER} output *.zip admin admin ${BUILD_URL} https://10.0.10.47:8446'            			
             }                        	 				
         }			
     }			
 } 
