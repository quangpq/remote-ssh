#!/bin/bash
set -e

n=1 ; eval a$n="54.255.236.246"
n=2 ; eval a$n="18.136.105.95"
n=3 ; eval a$n="18.136.104.14"
n=4 ; eval a$n="13.250.112.83"
n=5 ; eval a$n="52.221.181.66"
n=6 ; eval a$n="54.169.140.0"

## fabric ca for org1
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@54.255.236.246 'if [ $(pidof fabric-ca-server) ] ; then kill $(pidof fabric-ca-server) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts/; ./start-root-ca.sh -g org1 -r 0; sleep 5 ; ./register-peer.sh -g org1 ; sleep 5; ./generate-peer-tls.sh -g org1 -n 0; exit ;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@18.136.105.95 'if [ $(pidof fabric-ca-server) ] ; then kill $(pidof fabric-ca-server) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts/; ./start-root-ca.sh -g org2 -r 0;  sleep 5; ./register-peer.sh -g org2; sleep 5;  ./generate-peer-tls.sh -g org2 -n 0; exit ;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@18.136.104.14 'if [ $(pidof fabric-ca-server) ] ; then kill $(pidof fabric-ca-server) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts/; ./start-root-ca.sh -g org3 -r 0; sleep 5;  ./register-peer.sh -g org3; sleep 5; ./generate-peer-tls.sh -g org3 -n 0; exit ;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@13.250.112.83 'if [ $(pidof fabric-ca-server) ] ; then kill $(pidof fabric-ca-server) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts/; ./start-root-ca.sh -g org4 -r 0; sleep 5; ./register-peer.sh -g org4; sleep 5; ./generate-peer-tls.sh -g org4 -n 0; exit;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@52.221.181.66 'if [ $(pidof fabric-ca-server) ] ; then kill $(pidof fabric-ca-server) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts/; ./start-root-ca.sh -g org5 -r 0; sleep 5; ./register-peer.sh -g org5; sleep 5; ./generate-peer-tls.sh -g org5 -n 0; exit;'
ssh -p 22 -i /home/datlv/Documents/deevo/key/dev-full-rights.pem ubuntu@54.169.140.0 'if [ $(pidof fabric-ca-server) ] ; then kill $(pidof fabric-ca-server) ; fi; cd /opt/gopath/src/github.com/deevotech/supply-chain-network/scripts/; ./start-root-ca.sh -g org0 -r 0; sleep 5; ./register-orderer.sh -g org0; sleep 5; ./generate-orderer-tls.sh -g org0 -n 0; exit;'
