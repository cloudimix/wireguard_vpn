# Wireguard VPN Server
![test workflow](https://github.com/cloudimix/wireguard_vpn/actions/workflows/checks.yml/badge.svg)</br>
Free Wireguard VPN Server on Oracle Cloud

## Instalation:
- install wireguard localy (sudo apt install wireguard)
- In terraform.tfvars set you oci tenancy_ocid (like ocid1.tenancy.oc1..aaaaaaaablablablablablablablablablablablabla)
- In provider.tf change organization and workspace o comment the block
- $ oci session authenticate (default profile = DEFAULT)
- $ terraform login (if you want to save the state in terraform cloud)
- $ make all
- $ wg-quick up wg0
