aws cloudformation update-stack --stack-name ec2-example-2 --template-body file://05_rds.yaml --parameters \
ParameterKey=EnvironmentType,ParameterValue=dev \
ParameterKey=KeyPairName,ParameterValue=cf-test \
ParameterKey=DBPassword,ParameterValue=Abcd1234

aws cloudformation create-change-set --stack-name ec2-example-2 --template-body file://06_rds.yaml --change-set-name TestChangeSet --parameters \
ParameterKey=EnvironmentType,ParameterValue=dev \
ParameterKey=KeyPairName,ParameterValue=cf-test \
ParameterKey=DBPassword,ParameterValue=Abcd1234