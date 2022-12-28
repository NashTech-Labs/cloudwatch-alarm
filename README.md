# What is Terraform?

Terraform is an open-source infrastructure-as-configuration software tool created by HashiCorp. Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.

This repo contatins terraform to create a cloudwatch metric alarm using terraform. Alarm will be triggered whem the CPU utilization is greater or equal to 80%.
This will send the alarm on the email given in the sns subscription.

## How to use this?

Update terraform.tfvars file with the variables you want to use

| Variable | Required |
| :-- | :--: |
| email_address | true |
| alarm_name | false |
| alarm_description | false |
| alarm_comparison_operator | true |
| alarm_statistic | false |
| alarm_evaluation_periods | false |
| alarm_period | false |
| alarm_threshold | false |
| cludwatch_alarm_tags | false |
| ec2_instance_name | false |
| ami_id | true |
| instance_type | false |
| monitoring_ec2 | false |
| instance_tags | false |
| key_name | false |

Commands to use:
- `terraform plan`
- `terraform apply`