FROM typesense/typesense:0.23.1

ENV TYPESENSE_DATA_DIR="/data"

COPY entrypoint.sh .

RUN mkdir "/data"
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]