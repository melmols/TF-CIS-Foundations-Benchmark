# TF CIS Benchmark Quickstart

### Check out the [project article](https://deliveroo.engineering/2020/01/02/CloudFormation-To-Terraform.html) 

## It manages the following stack:

TL:DR: This Project is based of CloudFormation CIS Benchmark Quickstart [https://github.com/aws-quickstart/quickstart-compliance-cis-benchmark]

![](https://camo.githubusercontent.com/f600ecf22ac9fbac422f02251f3910f9636e5376/68747470733a2f2f64302e6177737374617469632e636f6d2f706172746e65722d6e6574776f726b2f517569636b53746172742f646174617368656574732f717569636b73746172742d6172636869746563747572652d666f722d6369732d62656e63686d61726b2d6f6e2d6177732e706e67)

The stack can be described as follows:

- Cloudtrail
- AWS Config
- S3

Templates are the following:

- Pre-requisites template: makes sure CloudTrail, config and S3 are created or exist and meet the preconditions for CIS Benchmarking:
    -   Config must have an active recorder running.
    -   CloudTrail must be delivering logs to CloudWatch Logs
- Config Setup template: sets the configurations needed for AWS config
- CloudTrail-setup template: sets the configurations needed for CloudTrail
- CIS-benchmark template: this is the tricky one, it contains all 42 objectives the account should meet to be CIS foundations compliant.
- Main template: this is the main template, and it nests the stacks created from the previous templates so it can deploy the CIS AWS Foundations benchmark.
