#!/bin/sh
# 
# Create UdacityAppStack
#
TEMPLATE_FILE=app_cfm.yml
STACK_NAME=UdacityAppStack
PARAMS_FILE=params.json

aws cloudformation create-stack \
--stack-name $STACK_NAME \
--template-body file://$TEMPLATE_FILE \
--parameters file://$PARAMS_FILE \
--capabilities CAPABILITY_IAM \
--region=us-west-2
