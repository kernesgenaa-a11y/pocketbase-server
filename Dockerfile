FROM alpine:latest

WORKDIR /app

Volume /app/pb_data

COPY pocketbase /app/pocketbase
RUN chmod +x /app/pocketbase

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
