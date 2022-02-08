FROM alpine
RUN ls -al
RUN apk add --update --no-cache python3 gcc make g++ wget git bash jq > /dev/null 2>&1
RUN wget https://releases.hashicorp.com/terraform/0.13.7/terraform_0.13.7_linux_amd64.zip
RUN unzip terraform_0.13.7_linux_amd64.zip && rm terraform_0.13.7_linux_amd64.zip
RUN mv terraform /usr/bin/terraform
RUN terraform version
