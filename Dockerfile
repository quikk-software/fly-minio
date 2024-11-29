FROM minio/minio

CMD ["server", "http://minio-{1...3}/data", "--console-address", ":9001"]
