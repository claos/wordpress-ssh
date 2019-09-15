FROM wordpress:latest
MAINTAINER Carlos Laos (laos.carlos@gmail.com)

# Installing OpenSSH
RUN apt-get update && apt-get -y install openssh-server
EXPOSE 22

# Replacing apache2-foreground to start OpenSSH
ADD ./apache2-foreground /usr/local/bin/apache2-foreground
RUN chmod a+x /usr/local/bin/apache2-foreground
