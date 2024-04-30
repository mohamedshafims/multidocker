# Use a base image with the desired programming language and runtime
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code to the working directory
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the application will run
EXPOSE 5000

# Set a timestamp as an environment variable
ENV BUILD_TIMESTAMP=20220430-1200

# Set the command to start the application
CMD ["python", "app.py"]
