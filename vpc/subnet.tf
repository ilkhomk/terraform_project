resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.net.id
  map_public_ip_on_launch = "true"
  cidr_block        = var.public_cidr1
  availability_zone = "${var.region}a"
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.net.id
  map_public_ip_on_launch = "true"
  cidr_block        = var.public_cidr2
  availability_zone = "${var.region}b"
}

resource "aws_subnet" "public3" {
  vpc_id            = aws_vpc.net.id
  map_public_ip_on_launch = "true"
  cidr_block        = var.public_cidr3
  availability_zone = "${var.region}c"
}
resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.net.id
  cidr_block        = var.private_cidr1
  availability_zone = "${var.region}a"
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.net.id
  cidr_block        = var.private_cidr2
  availability_zone = "${var.region}b"
}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.net.id
  cidr_block        = var.private_cidr3
  availability_zone = "${var.region}c"
}