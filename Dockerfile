FROM node:12-alpine

ENV ENV=production

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 80
CMD ["node", ".index.js"]

# RUN chmod +x scripts/deploy_aws_ecs.sh
# CMD ["bash", "-c", "scripts/deploy_aws_ecs.sh"]
# CMD ["npm start", "dist/index.js"]
# docker build -t api-service .
# docker run -it -p 80:80 api-service