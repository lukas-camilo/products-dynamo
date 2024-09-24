resource "aws_dynamodb_table" "products" {
    name = "ProductsTable"
    billing_mode = "PROVISIONED"
    read_capacity = 10
    write_capacity = 5

    hash_key = "productId"
    attribute {
    name = "productId"
    type = "S"  # String data type
    }

    lifecycle {
        prevent_destroy = true
    }

    tags = {
    Name = "ProductsTable"
    }
}