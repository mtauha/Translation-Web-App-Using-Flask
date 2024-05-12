# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /src

# Copy the current directory contents into the container at /app
COPY . /src

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose any ports the app is expecting
EXPOSE 5000

ENV FLASK_DEBUG=1

# Command to run the application
CMD ["flask", "app", "run"]