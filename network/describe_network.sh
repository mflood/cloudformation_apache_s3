#!/bin/sh
# 
# Describe UdacityNetworkStack
#
STACK_NAME=UdacityNetworkStack

aws cloudformation describe-stacks --stack-name $STACK_NAME | grep StackStatus
aws cloudformation describe-stack-events --stack-name $STACK_NAME | grep ResourceStatusReason | head
#aws cloudformation list-exports
