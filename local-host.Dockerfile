FROM node:22

WORKDIR /app

RUN echo "Installing dependencies..."
COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]