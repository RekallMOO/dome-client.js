FROM node:16

# Set work directory to client
WORKDIR /client

# Add code and build
ADD . /client

# Fetch dependencies
RUN npm install

# Run the application
EXPOSE 5000
ENTRYPOINT ["nodemon", "client-app.js"]
