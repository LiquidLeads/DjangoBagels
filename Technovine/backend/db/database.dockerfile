FROM mysql:latest AS db

WORKDIR /mysql/app
COPY . .

