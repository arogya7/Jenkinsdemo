FROM ubuntu:latest

RUN apt-get update && apt-get install -y nginx

RUN apt-get install -y gnupg2 && \
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
    apt-get update && \
    apt-get install -y jenkins

EXPOSE 80 8080

CMD service nginx start && service jenkins start && tail -f /dev/null
