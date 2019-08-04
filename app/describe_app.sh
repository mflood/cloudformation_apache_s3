#!/bin/sh
# 
# Describe UdacityAppStack
#
STACK_NAME=UdacityAppStack

aws cloudformation describe-stacks --stack-name $STACK_NAME | grep StackStatus
aws cloudformation describe-stack-events --stack-name $STACK_NAME | grep ResourceStatusReason | head
aws cloudformation list-exports | grep -A1 -w Name
