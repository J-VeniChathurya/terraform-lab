Dynamic Infrastructure Creation using Terraform

Steps Performed:

1. Used list variable to define multiple container configs.
2. Used for_each expression to dynamically create containers.
3. Pulled nginx image once and reused.
4. Created containers web1 web2 web3 on different ports.
5. Output generated list of service URLs.
6. Demonstrated scalable infrastructure creation.