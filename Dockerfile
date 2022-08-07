FROM typesense/typesense:0.23.1

COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

RUN mkdir "/data"

ENTRYPOINT ["./entrypoint.sh"]