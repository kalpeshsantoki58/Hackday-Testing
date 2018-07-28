FROM nginx:alpine
GIT PULL
COPY . /usr/share/nginx/html