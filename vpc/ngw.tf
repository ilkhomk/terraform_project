resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public1.id
}
resource "aws_eip" "nat" {
  vpc      = true
}