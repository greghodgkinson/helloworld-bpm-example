pipeline {			
      agent {			     			
     	      label 'buildconductor-bpm'						
      }			
     			
     stages {              
           stage('Checkout'){
                  steps {
                      checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: '/var/jenkins/workspace/helloworld-bpma/load']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/greghodgkinson/helloworld-bpma-example.git']]])
                  }
            }        
         			
            stage('Build') {      		    			
                  steps {			                                			
                        sh '/buildconductor/bpm/run-automation.sh buildBpel HelloWorldMediation ${BUILD_NUMBER} ${BUILD_URL} ${NODE_NAME}'               			
                  }			
            }			
         			
            stage('Publish to UCD') {			
                  steps {			 			
                        sh '/buildconductor/bpm/run-automation.sh uploadToUcd "HelloWorld Process App BPMStandard8.5" ${BUILD_NUMBER} output *.zip admin admin ${BUILD_URL} https://10.0.10.47:8446'            			
                  }                        	 				
            }	
           
            stage('Trigger UCD Dev Deploy') {			
                  steps {			       				 			
                        sh '/buildconductor/bpm/run-automation.sh requestProcess "Demo Applications System (BPM, IIB, WDP, WAS)" "Dev" "Deploy HelloWorld Mediation BPMAdvanced8.5 (Latest Version)" admin admin ${BUILD_URL} https://10.0.10.47:8446'            			
                   }                        	 				
            }
     }		
} 
