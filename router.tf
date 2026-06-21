# # =========================================================
# # Internet Gateway
# # Public Subnet이 인터넷과 통신할 수 있도록 VPC에 IGW 연결
# # =========================================================

# resource "aws_internet_gateway" "frodo_igw" {
#   vpc_id = aws_vpc.frodo_vpc.id

#   tags = {
#     Name = "frodo-igw"
#   }
# }

# # =========================================================
# # Public Route Table
# # Target: 0.0.0.0/0 -> Internet Gateway
# # 적용 Subnet: frodo-public01, frodo-public02
# # =========================================================

# resource "aws_route_table" "frodo_public_rt" {
#   vpc_id = aws_vpc.frodo_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.frodo_igw.id
#   }

#   tags = {
#     Name = "frodo-public-rt"
#   }
# }

# resource "aws_route_table_association" "frodo_public01_assoc" {
#   subnet_id      = aws_subnet.frodo_public01.id
#   route_table_id = aws_route_table.frodo_public_rt.id
# }

# resource "aws_route_table_association" "frodo_public02_assoc" {
#   subnet_id      = aws_subnet.frodo_public02.id
#   route_table_id = aws_route_table.frodo_public_rt.id
# }


