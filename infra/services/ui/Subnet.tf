// 서브넷 설정
# 다음과 같이 2개의 AZ에 public, private subnet을 각각 1개씩 생성한다.
# ${aws_vpc.dev.id} 는 aws_vpc의 dev리소스로부터 id값을 가져와서 세팅한다.
# resource name은 {aws_subnet.public_1a.id} 와 같이 작성하기 쉽도록 underscore를 사용했다.
resource "aws_subnet" "CRBS-subnet-public-a" {
  vpc_id                    = var.vpc_id
  availability_zone         = var.availability_zone1
  cidr_block                = "172.16.1.0/24"
  map_public_ip_on_launch   = true
  tags = { Name = "CRBS-subnet-public-a" }
}

resource "aws_subnet" "CRBS-subnet-public-c" {
  vpc_id            = var.vpc_id
  availability_zone = var.availability_zone2
  cidr_block        = "172.16.2.0/24"
  map_public_ip_on_launch   = true
  tags = { Name = "CRBS-subnet-public-c" }
}
