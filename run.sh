#!/bin/sh

cat <<EOF >> /etc/hosts
fdaa:b:71d5:a7b:60:dc7b:3016:2  minio1.local
fdaa:b:71d5:a7b:4e:1335:857c:2 minio2.local
fdaa:b:71d5:a7b:73:fa1c:254c:2 minio3.local
EOF

# This script comes with the minio/minio image
/usr/bin/docker-entrypoint.sh server http://minio{1...3}.local:9000/data --console-address :9001
