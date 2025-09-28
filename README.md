The Repository is about creating EKS Cluster in the specific region with multiple worker nodes for high availability..
---------------------------------------------------------------------------------------------------------------------
PreRequesites to create EKS Cluster
-----------------------------------
1. CLI
2. Kubectl
3. Eksctl
4. IAM Authenticator
5. EKS Command --->
       eksctl create cluster \
--name my-eks-cluster \
--region ap-south-1 \
--version 1.33 \
--nodegroup-name worker-node \
--node-type t3.small \
--nodes 3 \
--nodes-max 3 \
--nodes-min 3 \
--ssh-access \
--ssh-public-key new-eks \
--vpc-public-subnets=subnet-02094e0f7feeecc03, subnet-001e3c6a556d07859 \
--vpc-private-subnet=subnet-057c61136a2d6c6a6, subnet-005026b8bcd8d4a6b \
--node-private-networking



Scaling workker Nodes Using EKSCTL
----------------------------------
eksctl scale nodegroup \
  --cluster <cluster_name> \
  --name <nodegroup_name> \
  --nodes <desired_count> \
  --nodes-min <min_count> \
  --nodes-max <max_count>


Scaling Worker Nodes Using CLI
------------------------------
aws eks update-nodegroup-config \
  --cluster-name my-eks-cluster \
  --nodegroup-name my-node-group \
  --scaling-config minSize=2,maxSize=6,desiredSize=4


