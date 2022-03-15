FROM alexmon1989/dripper:latest

COPY . /app
WORKDIR /app

ENTRYPOINT ["sh"]
CMD ["stop.sh"]
