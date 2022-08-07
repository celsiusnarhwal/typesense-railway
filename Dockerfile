FROM typesense/typesense:0.23.1

ENV TYPESENSE_DATA_DIR="/data"

COPY entrypoint.sh .

RUN mkdir -p $TYPESENSE_DATA_DIR
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]