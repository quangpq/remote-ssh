#!/bin/bash
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@18.136.126.89 ' cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts/ && export FABRIC_CFG_PATH=/home/ubuntu/hyperledgerconfig/data/ && bash ./chaincode-caliper.sh -c mychannel -n simple -v 1.0 ; sleep 3; exit; '
