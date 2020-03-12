FROM alpine
MAINTAINER Inki Yoo

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /
RUN apk add --no-cache ca-certificates

ENTRYPOINT [ "/terraform" ]

#USER ubuntu


