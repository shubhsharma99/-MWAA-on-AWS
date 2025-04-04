output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "s3_bucket_arn" {
  value = module.s3.s3_bucket_arn
}

output "iam_role_arn" {
  value = module.iam.iam_role_arn
}

output "mwaa_env_name" {
  value = module.mwaa.mwaa_env_name
}
