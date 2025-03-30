#!/bin/bash

# This script checks the CPU usage of an EC2 instance and scales in auto scaling group

# check cpu usage and scale EC2 
CPU_USAGE=$(aws cloudwatch get-metric-statistics --namespace AWS/EC2 --metric-name CPUUtilization --dimensions Name=InstanceId,Value=i-12345678 --statistic Average --period 300 --start-time $(date -d '5 minutes ago' --utc +%FT%TZ) --end-time $(date --utc +%FT%TZ) --query 'Datapoints[0].Average' --output text)

if (( $(echo "$CPU_USAGE > 80" | bc -l) )); then
    aws autoscaling update-auto-scaling-group --auto-scaling-group-name my-auto-scaling-group --desired-capacity 3
fi
