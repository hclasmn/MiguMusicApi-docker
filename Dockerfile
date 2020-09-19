From node:lts-alpine3.11
#RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories 
RUN  apk add --no-cache git bash
RUN git clone https://github.com/jsososo/MiguMusicApi.git /MiguMusicApi
RUN cd /MiguMusicApi
RUN npm install
EXPOSE 3400
ENTRYPOINT ["npm start"]
