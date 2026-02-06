FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package.json ./
RUN npm install --production

# Copy app source
COPY app/ ./

EXPOSE 3000
ENV PORT=3000

CMD ["npm", "start"]
