FROM minio/minio

ENV MINIO_SERVER_URL="http://minio1.local:9000"

COPY run.sh run.sh
ENTRYPOINT [ "/bin/sh" ]

CMD [ "run.sh" ]