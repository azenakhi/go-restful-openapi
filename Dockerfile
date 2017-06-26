FROM scratch
ADD go-restful-swagger-linux-amd64 /app
CMD ["/app"]
EXPOSE 8080
