FROM node:alpine
WORKDIR MiguMusicApi
RUN \
    apk add --no-cache git && \
    git clone https://github.com/jsososo/MiguMusicApi.git /MiguMusicApi/ && \
    npm i
CMD ["npm", "start"]
EXPOSE 3300
