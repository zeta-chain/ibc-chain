# Use the Ignite CLI base image
FROM ignitehq/cli:v28.4.0

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Expose the necessary port
EXPOSE 26657

# Start the chain when the container starts
CMD ["ignite", "chain", "serve", "-r"]