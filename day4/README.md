Day4 — Terraform Modules

Steps Performed:

1. Created reusable Terraform module for nginx container.
2. Module accepts container name, port and image variables.
3. Root configuration calls module twice.
4. Created two nginx containers running on ports 8081 and 8082.
5. Verified containers using docker ps.
6. Accessed services using browser.