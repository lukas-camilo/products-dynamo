resource "aws_dynamodb_table" "products" {
    name = "ProductsTable"
    billing_mode = "PROVISIONED"
    read_capacity = 10
    write_capacity = 5

    hash_key = "productId"
    range_key = "productNames"

    attribute {
        name = "productId"
        type = "S"
    }

    attribute {
        name = "productNames"
        type = "S"
    }

    tags = {
    Name = "ProductsTable"
    }
}