resource "tls_private_key" "test" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "Key"
  public_key = tls_private_key.test.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.test.private_key_pem}' > ~/.ssh/key-pair-rizky-new.pem"
  }
}
