/*
resource "aws_eip" "ElasticIp" {
    vpc = true
  
}

output "EIP" {
    value = aws_eip.ElasticIp.public_ip
  
}
resource "aws_s3_bucket" "Bucket" {
    bucket = "terraformpractice333"
}

output "BucketName" {
  value = aws_s3_bucket.Bucket.bucket_domain_name
}
*/