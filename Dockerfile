# Use an official Python runtime as base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install system dependencies first
RUN apt-get update && apt-get install -y \
    pkg-config \
    coinor-libipopt-dev \
    libblas-dev \
    liblapack-dev \
    gfortran \
    libatlas-base-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the API port
EXPOSE 8000

# Run the FastAPI or Flask app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
