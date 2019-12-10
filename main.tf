#root module CIS_Foundations_Benchmark

resource "aws_cloudformation_stack" "pre-requisites" {
  name = "CIS-Compliance-Benchmark-PreRequisitesForCISBenchmark"

  template_url = "https://cis-compliance-json.s3-eu-west-1.amazonaws.com/pre-requisites.json"

  parameters = {

    QSS3BucketName = "${var.QSS3BucketName}"
    QSS3KeyPrefix = "${var.QSS3KeyPrefix}"
    ConfigureConfig = "${var.ConfigureConfig}"
    ConfigureCloudtrail = "${var.ConfigureCloudtrail}"


   }
}


resource "aws_cloudformation_stack" "cloudtrail-setup" {
  name = "CIS-Compliance-Benchmark-cloudtrail-stack"

  template_url = "https://cis-compliance-json.s3-eu-west-1.amazonaws.com/cloudtrail-setup.json"

  capabilities = ["CAPABILITY_IAM"]

}

resource "aws_cloudformation_stack" "config-setup" {
  name = "CIS-Compliance-Benchmark-config-stack"

  template_url = "https://cis-compliance-json.s3-eu-west-1.amazonaws.com/config-setup.json"

  capabilities = ["CAPABILITY_IAM"]

}

resource "aws_cloudformation_stack" "cis-benchmark" {
  name = "CIS-Compliance-Benchmark-CISBenchmarkStack"

  template_url = "https://cis-compliance-json.s3-eu-west-1.amazonaws.com/cis-benchmark.json"

}

resource "aws_cloudformation_stack" "main" {
  name = "CIS-Compliance-Benchmark-main-stack"

  template_url = "https://cis-compliance-json.s3-eu-west-1.amazonaws.com/main.json"

}

