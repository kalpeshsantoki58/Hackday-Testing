git pull
docker build -t hackday-testing:master .
docker run -d -p 98:80 hackday-testing:master