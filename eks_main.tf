module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = var.version
  cluster_name = var.eks_cluster_name
  cluster_version = var.eks_cluster_vesrion
  vpc_id = aws_vpc.vpc_name.id
  subnets = aws_subnet.subnet_name.id

  worker_groups = [
    {
        name = var.woker_node_name
        instance_type = var.instance_type
        asg_desired_capacity = 3
    }
  ]
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

