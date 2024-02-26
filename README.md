# forward-proxy-linode

allow linode vm in private network to access internet using forward proxy

## Architecture Diagram

![forward-proxy-linode drawio](https://github.com/junho100/terraform-linode-load-balancing/assets/55343124/89f1592f-941b-46b0-87ce-651372e6a36b)

## Getting started

1. create terraform.tfvars file in root dir
2. add api v4 token, password for logging in to vm

```
token=<TOKEN>
instance_password=<PASSWORD>
```

3. terraform plan, apply

## Document

https://velog.io/@junho100/forward-proxy%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%98%EC%97%AC-private-network-linode-%EC%99%B8%EB%B6%80-%ED%86%B5%EC%8B%A0-%ED%97%88%EC%9A%A9-%EA%B5%AC%EC%84%B1-with-terraform
