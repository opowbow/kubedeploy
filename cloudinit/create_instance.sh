# 1. azure
# --------

RESOURCE_GROUP='op-scr'
LOCATION='uksouth'
IMAGE='UbuntuLTS'
MASTER_SKU='Standard_D2_v2'
AGENT_SKU='Standard_D1_v2'

az group create -g $RESOURCE_GROUP -l $LOCATION
az vm create -g $RESOURCE_GROUP -n 'linux1' \
  --size $MASTER_SKU \
  --image $IMAGE \
  --public-ip-address-dns-name 'ip1-'$RESOURCE_GROUP \
  --vnet-name vnet1 \
  --subnet subnet1 \
  --custom-data cloud-init-master.sh \
  --generate-ssh-keys

az vmss create -g $RESOURCE_GROUP -n vmss0 \
  --vm-sku $AGENT_SKU \
  --image UbuntuLTS \
  --public-ip-address-dns-name 'lb1-'$RESOURCE_GROUP \
  --upgrade-policy-mode automatic \
  --instance-count 2 \
  --vnet-name vnet1 \
  --subnet subnet1 \
  --custom-data cloud-init-node.sh \
  --priority Low \
  --generate-ssh-keys
