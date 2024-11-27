#!/bin/bash
NAME=""
MEM=""
BASEPATH=""
INET=""
copy_vm_img() {
    cp -v $BASEPATH/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2 /opt/kvms/vm/$NAME.qcow2
}

create_vm() {
  virt-install --name $NAME \
--memory $MEM --noreboot \
--os-variant detect=on,name=rockly9 \
--cloud-init user-data="/opt/kvmtools/cloud_cfg/cloudinit-user-data.yaml" \
--disk pool=VM,size=30,backing_store="/opt/kvms/vm/$NAME.qcow2" \
--network type=direct,source=$INET,source_mode=bridge,model=virtio 
}
copy_vm_img
create_vm
