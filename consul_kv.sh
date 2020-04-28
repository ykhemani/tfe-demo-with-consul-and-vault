#!/bin/bash

consul kv put cloud/aws/us-west-2/ami ami-009c58de81eab29f1

consul kv put cloud/aws/us-west-2/app/hal/sg sg-0f8e731756f15ff75

consul kv put cloud/aws/us-west-2/subnet_id/dev subnet-05e0752cfcaacc2fa

consul kv put cloud/aws/us-west-2/instance_type/dev  t2.medium
consul kv put cloud/aws/us-west-2/instance_type/qa   t2.medium
consul kv put cloud/aws/us-west-2/instance_type/stg  m5a.large
consul kv put cloud/aws/us-west-2/instance_type/prod m5a.large

consul kv put cloud/aws/us-west-2/root_volume_size/dev  20
consul kv put cloud/aws/us-west-2/root_volume_size/qa   20
consul kv put cloud/aws/us-west-2/root_volume_size/stg  40
consul kv put cloud/aws/us-west-2/root_volume_size/prod 80

consul kv put cloud/aws/us-west-2/root_volume_type/dev  gp2
consul kv put cloud/aws/us-west-2/root_volume_type/qa   gp2
consul kv put cloud/aws/us-west-2/root_volume_type/stg  gp2
consul kv put cloud/aws/us-west-2/root_volume_type/prod gp2

consul kv put cloud/aws/us-west-2/ssh_key/dev  ykhemani_nano
consul kv put cloud/aws/us-west-2/ssh_key/qa   ykhemani_nano
consul kv put cloud/aws/us-west-2/ssh_key/stg  ykhemani_nano
consul kv put cloud/aws/us-west-2/ssh_key/prod ykhemani_nano

#############################################################

consul kv put cloud/aws/us-east-1/ami ami-0d4b9bb1917cb09c8

consul kv put cloud/aws/us-east-1/instance_type/dev  t2.medium
consul kv put cloud/aws/us-east-1/instance_type/qa   t2.medium
consul kv put cloud/aws/us-east-1/instance_type/stg  m5a.large
consul kv put cloud/aws/us-east-1/instance_type/prod m5a.large

consul kv put cloud/aws/us-east-1/root_volume_size/dev  20
consul kv put cloud/aws/us-east-1/root_volume_size/qa   20
consul kv put cloud/aws/us-east-1/root_volume_size/stg  40
consul kv put cloud/aws/us-east-1/root_volume_size/prod 80

consul kv put cloud/aws/us-east-1/root_volume_type/dev  gp2
consul kv put cloud/aws/us-east-1/root_volume_type/qa   gp2
consul kv put cloud/aws/us-east-1/root_volume_type/stg  gp2
consul kv put cloud/aws/us-east-1/root_volume_type/prod gp2

consul kv put cloud/aws/us-east-1/ssh_key/dev  ykhemani_nano
consul kv put cloud/aws/us-east-1/ssh_key/qa   ykhemani_nano
consul kv put cloud/aws/us-east-1/ssh_key/stg  ykhemani_nano
consul kv put cloud/aws/us-east-1/ssh_key/prod ykhemani_nano
