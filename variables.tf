
#pre-requisites

variable "QSS3BucketName" {

default = "tf-qss3-cis-compliance-json"

}
variable "QSS3KeyPrefix" {

default = "https://cis-compliance-json.s3-eu-west-1.amazonaws.com/pre-requisites.json"

}
variable "ConfigureConfig" {

default = ""

}
variable "ConfigureCloudtrail" {

default = ""

}

#cis-benchmark & main
variable "NotificationEmailAddressForCloudWatchAlarms" {

default = ""

}

