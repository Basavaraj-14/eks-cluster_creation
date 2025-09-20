#------------
#VPC
variable "eks_region" {
  default = "us-east-1"
  description = "name of the region that vpc is getting created"
}
variable "eks_cidr" {
  description = "cidr range of the eks"
}
variable "eks_vpc_name" {
  description = "name of the vpc getting created"
}
variable "eks_public_availability_zone" {
  description = "az of the pubsubnet"
}
 variable "public_subnet_cidr" {
   description = "cidr of pub subnet"
 }
 variable "eks_private_availability_zone" {
   description = "az of the private subnet"
 }
 variable "private_subnet_cidr" {
   description = "cidr of the private subnet"
 }

#----------------------------
#EKS Cluster
 variable "eks_cluster_name" {
    description = "name of the eks_cluster"
 }
 variable "eks_cluster_vesrion" {
   description = "version of the cluster"
 }
 variable "vpc_id" {
   description = "vpc id where eks is getting created"
 }
 variable "subnet_ids" {
   description = "subnet id of vpc"
 }
 variable "woker_node_name" {
   description = "name of the worker nodes"
 }
 variable "instance_type" {
   description = "instance type"
 }
 variable "eks_cluster_name1" {
   default = "name of the cluster"
 }


