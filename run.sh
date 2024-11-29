cat <<EOF >> /etc/hosts
fdaa:b:71d5:a7b:60:712e:59d6:2 minio1.local
fdaa:b:71d5:a7b:73:25d6:ca0b:2 minio2.local
fdaa:b:71d5:a7b:4e:791d:e60b:2 minio3.local
EOF

# This script comes with the minio/minio image
/usr/bin/docker-entrypoint.sh server http://minio{1...3}.local:9000/data --console-address :9001