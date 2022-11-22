FROM nginx:latest AS backend

WORKDIR /backend/app
COPY . .

