FROM microsoft/aspnet:latest

RUN printf "deb http://ftp.us.debian.org/debian jessie main\n" >> /etc/apt/sources.list

COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]

EXPOSE 5000/tcp
ENTRYPOINT ["donet", "run"]
