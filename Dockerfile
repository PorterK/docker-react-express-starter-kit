FROM node:4

RUN useradd -u 777 -r -m -U app
RUN mkdir -p /src/app
WORKDIR /src/app
COPY . /src/app

RUN chown -R app:app .
USER app

CMD ["npm", "start"]
