FROM node:18-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3003
CMD ["npm", "start"]

# docker build . -t prashanthshivanna/audiology:30112024
# docker run -p 3002:3002 prashanthshivanna/audiology:30112024
# docker push prashanthshivanna/audiology:30112024
# docker run -d --name audiology -e "VIRTUAL_HOST=audiology.jssish.com" -e "VIRTUAL_PORT=3002" -e "LETSENCRYPT_HOST=audiology.jssish.com" -p 3002:3002 --restart unless-stopped prashanthshivanna/audiology:30112024
