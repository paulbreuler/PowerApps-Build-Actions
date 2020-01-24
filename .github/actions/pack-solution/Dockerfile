# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint-script.sh /entrypoint-script.sh

RUN ["chmod", "+x", "/entrypoint-script.sh"]
RUN ["sudo curl", "-o /usr/local/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint-script.sh"]