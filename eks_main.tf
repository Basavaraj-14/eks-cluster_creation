module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = var.version
  cluster_name = var.eks_cluster_name
  cluster_version = var.eks_cluster_vesrion
  vpc_id = aws_vpc.test_eks_vpc.id
  subnets = aws_subnet.private.id

  managed_node_groups = {
      default = {
        name = var.woker_node_name
        instance_type = [var.instance_type]
        min_size = 4
        max_size = 10
        desired_size = 6
    }
  }
  tags = {
    Name = var.eks_cluster_name1
  }
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}
data "aws_eks_cluster_auth" "cluster_auth" {
  name = module.eks.cluster_id
}

