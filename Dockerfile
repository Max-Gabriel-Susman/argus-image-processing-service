# Use the official Python image as a base
FROM python:3.10-slim

# Set environment variables to prevent Python from writing pyc files
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install system dependencies and ffmpeg
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY serve_rtmp.py /app/serve_rtmp.py

# Install any Python dependencies (if required, use a requirements.txt file)
# Uncomment and modify the following line if you have Python dependencies:
# COPY requirements.txt /app/
# RUN pip install --no-cache-dir -r requirements.txt

# Expose port 1935 for RTMP (optional, if you want to make RTMP server available externally)
EXPOSE 1935

# Set the entrypoint to run the Python script
ENTRYPOINT ["python", "serve_rtmp.py"]
