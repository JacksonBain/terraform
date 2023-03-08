# main.tf 
#Written by Jackson Bain
#   _._     _,-'""`-._
#  (,-.`._,'(       |\`-/|
#    `-.-' \ )-`( , o o)    Greyscale
#          `-    \`_`"'-
# Create VPC/Subnet/Security Group/Network ACL
#Some modlules contain variables that refer to other modules. Example: vpc = module.vpc These variables are required to pass specific information to modules from other modules. Example: The Watchguard module relies on subnet ID's from the VPC module. 
#See Documentation for more info. 

provider "aws" {
  region     = "us-east-1"
}

######AWS Backup Module########
module "AWSBackup" {
  source = "./modules/AWSBackup/"
}
