FROM golang:1.22.2-alpine as build

WORKDIR /app
COPY . .
RUN go build -o /desafio-go

FROM scratch
COPY --from=build /app/desafio-go .

ENTRYPOINT [ "/desafio-go" ]
