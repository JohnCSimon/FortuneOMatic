FROM ubuntu
EXPOSE 8080
RUN apt update -y && apt install fortune -y
WORKDIR /fortunedir

COPY FortuneOMatic /fortunedir
# GOOS=linux go build
ENTRYPOINT [ "./FortuneOMatic" ]

# docker build -t fortuneomatic .
# docker run -p8080:8080 --name fortune fortuneomatic
# docker exec -it f795fc4a4 /bin/sh