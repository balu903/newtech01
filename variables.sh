##Extention FoxUnderMoon
## Ctrl+ Shift + P --> Open user settings --> Text Editor --> Formatting --> FormatOnSave (Option)
# This script  provides list of VPC-ID from the selected region.
#!/bin/bash
VPCID=$(aws ec2 describe-vpcs --region us-east-1 | jq ".Vpcs[].VpcId" -r)
for vpc in $VPCID; do
    echo "The VPC ID is: $VPC"
    echo "--------------------------"
done
