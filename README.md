# terraform-practice

Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

Source: https://developer.hashicorp.com/terraform/intro

No. | Items | Date Updated 
--- | --- | ---
1 | Terraform Introduction | 07 April 2023
2 | Create table in BigQuery through Terraform | 09 April 2023
3 | Terraform variables exploration | 13 April 2023


CLI Notes:

1. terraform init -- To initialize working directory
2. terraform fmt --  To rewrite Terraform configuration files to a canonical format and style
3. terraform validate -- To validate the configuration internally
4. terraform plan -- To create an execution plan, which lets us preview the changes that Terraform plans to make to your infrastructure
5. terraform apply -- To executes the actions proposed in a Terraform plan to create, update, or destroy infrastructure


Extra Resources (for reference)
1. Credentials & terraform on GCP google cloud --> https://www.youtube.com/watch?v=V-q_h0a8dvo 
2. BigQuery & terraform --> https://www.youtube.com/watch?v=UdBfmbJY9ug&t=133s 
3. About Terraform --> https://github.com/alfonsof/terraform-google-cloud-examples/tree/master/code/01-hello-world

Next plan:
Terraform practice with variables: 

--> Instead of hard-coding values like the project ID and dataset ID in your Terraform code, try using variables to make your code more reusable and flexible. You can define variables in a separate file or in the same file as your code using the 
