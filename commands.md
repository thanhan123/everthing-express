aws cloudformation deploy \
  --stack-name everything-express-app-stack \
  --template-file ecs-stack.yml \
  --capabilities CAPABILITY_IAM \
  --parameter-overrides \
    VpcId=vpc-xxxxxxxxxxxxxxxxx \
    SubnetIds=subnet-xxxxxxxxxxxxxxxxx,subnet-yyyyyyyyyyyyyyyyy \
    ImageTag=latest # Or the specific SHA from your CI/CD