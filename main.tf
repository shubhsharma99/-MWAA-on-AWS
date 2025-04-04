module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}
module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = var.s3_bucket_name
  dag_s3_path    = var.dag_s3_path
}

module "iam" {
  source         = "./modules/iam"
  mwaa_role_name = var.iam_role_name
  s3_bucket_arn  = module.s3.s3_bucket_arn
}

module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "mwaa" {
  source             = "./modules/mwaa"
  mwaa_env_name      = var.mwaa_env_name
  subnet_ids         = module.vpc.subnet_ids
  security_group_ids = [module.security_group.security_group_id]
  s3_bucket_name     = var.s3_bucket_name
  dag_s3_path        = var.dag_s3_path
  execution_role_arn = module.iam.iam_role_arn
  airflow_version = var.airflow_version
}
