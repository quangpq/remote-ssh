#!/bin/bash
set -e

n=1 ; eval a$n="13.229.67.40"
n=2 ; eval a$n="13.250.109.169"
n=3 ; eval a$n="13.229.125.149"
n=4 ; eval a$n="54.179.181.86"
n=5 ; eval a$n="54.254.189.216"

ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@13.229.67.40 'sudo mkdir -p /var/hyperledger; sudo chmod 777 -R /var/hyperledger/; if [ $(pidof peer) ] ; then kill $(pidof peer) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts; git pull;  ./start-peer.sh -g org1 -n 0; exit;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@13.250.109.169 'sudo mkdir -p /var/hyperledger; sudo chmod 777 -R /var/hyperledger/; if [ $(pidof peer) ] ; then kill $(pidof peer) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts; git pull;  ./start-peer.sh -g org2 -n 0; exit;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@13.229.125.149 'sudo mkdir -p /var/hyperledger; sudo chmod 777 -R /var/hyperledger/; if [ $(pidof peer) ] ; then kill $(pidof peer) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts; git pull;  ./start-peer.sh -g org3 -n 0; exit;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@54.179.181.86 'sudo mkdir -p /var/hyperledger; sudo chmod 777 -R /var/hyperledger/; if [ $(pidof peer) ] ; then kill $(pidof peer) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts; git pull;  ./start-peer.sh -g org4 -n 0; exit;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@54.254.189.216 'sudo mkdir -p /var/hyperledger; sudo chmod 777 -R /var/hyperledger/; if [ $(pidof peer) ] ; then kill $(pidof peer) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts; git pull;  ./start-peer.sh -g org5 -n 0; exit;'

