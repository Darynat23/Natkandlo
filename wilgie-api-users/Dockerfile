FROM golang AS builder

ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

RUN mkdir /root/.ssh
COPY id_rsa /root/.ssh
RUN chmod 700 /root/.ssh/id_rsa
RUN eval `ssh-agent -s` && ssh-add ~/.ssh/id_rsa
RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
RUN git config --global url."git@gitlab.com:".insteadOf "https://gitlab.com/"
WORKDIR /app
COPY go.mod go.sum ./
RUN go install -v ./...

COPY . .
RUN go build -o main .


FROM golang

COPY --from=builder /app/main /main
EXPOSE 5005

CMD ["/main"]