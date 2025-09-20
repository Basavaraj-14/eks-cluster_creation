provider "aws" {
  region = var.eks_region
}
resource "aws_vpc" "test_eks_vpc" {
  cidr_block = var.eks_cidr
  tags = {
    Name = var.eks_vpc_name
  }
}
resource "aws_subnet" "public_subnet" {
  availability_zone = var.eks_public_availability_zone
  cidr_block = var.public_subnet_cidr
  vpc_id = aws_vpc.test_eks_vpc.id
}
resource "aws_subnet" "private_subnet" {
  availability_zone = var.eks_private_availability_zone
  vpc_id = aws_vpc.test_eks_vpc.id
  cidr_block = var.private_subnet_cidr
}


