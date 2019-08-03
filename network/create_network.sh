#!/bin/sh
# 
# Create UdacityNetworkStack
#
TEMPLATE_FILE=network_cfm.yml
STACK_NAME=UdacityNetworkStack
PARAMS_FILE=params.json

aws cloudformation create-stack \
--stack-name $STACK_NAME \
--template-body file://$TEMPLATE_FILE \
--parameters file://$PARAMS_FILE \
--region=us-west-2
