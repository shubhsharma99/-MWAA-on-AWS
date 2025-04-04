variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}

//-------------------S3-------------------------------


variable "s3_bucket_name" {
  description = "The S3 bucket name for MWAA DAGs"
  type        = string
}

variable "dag_s3_path" {
  description = "The S3 path for DAG files"
  type        = string
}


variable "mwaa_env_name" {
  description = "MWAA environment name"
  type        = string
}

variable "iam_role_name" {
  description = "IAM role name for MWAA"
  type        = string
}
variable "airflow_version" {
  description = "Airflow version for MWAA"
  type        = string
}