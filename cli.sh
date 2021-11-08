aws s3api create-bucket --bucket bucketjaysri
aws s3api put-object --bucket bucketjaysri --key 0-just-ec2.yaml --body c:/intellipaat/0-just-ec2.yaml
aws s3 rm s3://bucketjaysri/0-just-ec2.yaml
aws s3api delete-bucket --bucket bucketjaysri --region us-east-1
# launching ec2 instance
aws ec2 run-instances --image-id ami-01cc34ab2709337aa --instance-type t2.micro
aws ec2 create-security-group --group-name MySecurityGroup --description "MySecurityGroup"
aws ec2 run-instances --image-id ami-0c1a7f89451184c8b --count 1 --instance-type t2.micro --key-name mumbai --security-groups MySecurityGroup --subnet-id subnet-6e7f829e
# command+/ = # in mac
# ec2 instance create 
aws ec2 run-instances --image-id ami-01cc34ab2709337aa --count 1 --instance-type t2.micro
# the above will create a ec2  instance linux os
