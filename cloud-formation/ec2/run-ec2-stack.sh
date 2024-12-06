aws cloudformation create-stack --stack-name ec2-example --template-body file://01_ec2.yaml 
aws cloudformation update-stack --stack-name ec2-example --template-body file://02_ec2.yaml 
aws cloudformation update-stack --stack-name ec2-example --template-body file://03_ec2.yaml 
aws cloudformation update-stack --stack-name ec2-example --template-body file://04_ec2.yaml 
aws cloudformation update-stack --stack-name ec2-example --template-body file://04_ec2.yaml --parameters \
ParameterKey=AvailabilityZone,ParameterValue=us-west-2a \
ParameterKey=EnvironmentType,ParameterValue=dev \
ParameterKey=KeyPairName,ParameterValue=cf-test