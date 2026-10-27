
# Scalable Web Application on AWS

## Overview
A highly available web application deployed on AWS using
Amazon EC2, an Application Load Balancer (ALB), and an
EC2 Auto Scaling Group.

## AWS Region
Asia Pacific (Sydney) - ap-southeast-2

## Architecture
- Amazon EC2: Hosts the Apache web application.
- Application Load Balancer: Distributes incoming traffic.
- EC2 Auto Scaling: Maintains and adjusts instance capacity.
- Amazon CloudWatch: Monitors metrics and supports scaling.
- Multiple Availability Zones: Improves availability.

## Target Configuration
- Minimum instances: 1
- Desired instances: 2
- Maximum instances: 4
- Operating system: Amazon Linux 2023
- Web server: Apache HTTP Server
- Load balancer: Internet-facing ALB

## Implementation Checklist
- AWS networking verified
- Launch Template created
- Target Group configured
- Application Load Balancer configured
- Auto Scaling Group deployed
- Health checks verified
- Scaling tested
- Instance replacement tested
- Screenshots and documentation added
- AWS resources cleaned up

## Cost Management
Monitor AWS promotional credits and resource usage.
Delete billable resources after completing the lab.
