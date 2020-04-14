# _Terraform Module: terraform-module-aws-vpc-route-table_
_Terraform module for_ **_AWS VPC Routing Table_**


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

>

---
<!--END STABILITY BANNER-->

## _General_

_This module can be used to deploy a_ **_VPC Routing Table_** _on AWS Cloud Provider......_


---

## _Prerequisites_

_This module needs **_Terraform 0.12.23_** or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).



---

## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

- **_VPC Routing Table_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

- **_Sample Code:_**

```tf
module "vpc_route_table" {
  source = "git::https://github.com/nitinda/terraform-module-aws-vpc-route-table.git?ref=master"
  
  vpc_id = module.vpc.id
  tags   = {
    Environment = "prod"
    Project     = "POC"
  }
}

```

```tf
module "vpc_route_table" {
  source = "git::https://github.com/nitinda/terraform-module-aws-vpc-route-table.git?ref=master"
  
  vpc_id = module.vpc.id  
  tags   = merge(
    var.common_tags,
    {
      Environment = "prod"
      Name        = "rabbitmq-vpc-subnet-public-1a"
    }
  )
}

```


---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|:---:|
| **_vpc\_id_** | _The VPC ID_ | _string_ | **_Required_** |
| **_route_** | _A list of route objects_ | _any_ | **_Optional <br/> (Default - [])_** |
| **_propagating\_vgws_** | _A list of virtual gateways for propagation_ | _any_ | **_Optional <br/> (Default - [])_** |
| **_tags_** | _A mapping of tags to assign to the resource_ | _map(string)_ | **_Optional <br/> (Default - {})_** |


---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**


---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**
