# Definir variables
VPC_ID="vpc-02952482ac2a39039"
SUBNET_Publica_ID="subnet-0e9963c417e2bd9d8"
SUBNET_Privada_ID="subnet-09d4f7463353dc0e8"
GATEWAY_ID="igw-05eb5fc09c43b718e"
Tabla_Enrutamiento_ID="rtb-02f4161ac216a57f6"
KEY_NAME="pods-eks-acceso"
AMI_ID="ami-005fc0f236362e99f"
INSTANCE_TYPE="t2.micro"
Security_Group_ID="sg-032a644115c9d556d"
REGION="us-east-1"

# Crear una instancia EC2 sobre la VPC
INSTANCE_EC2_ID=$(aws ec2 run-instances --image-id $AMI_ID --count 1 --instance-type $INSTANCE_TYPE --key-name $KEY_NAME --subnet-id $SUBNET_Publica_ID --security-group-ids $Security_Group_ID --query 'Instances[0].InstanceId' --output text --region $REGION)
echo "Instancia EC2 lanzada con Id: $INSTANCE_EC2_ID"
