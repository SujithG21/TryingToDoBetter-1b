FROM python:3.10-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install necessary system packages
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    poppler-utils \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all source code into the image
COPY . /app

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install \
    torch \
    sentence-transformers \
    pdfplumber \
    transformers \
    tqdm

# Allow flexible runtime arguments
ENTRYPOINT ["python3", "main.py"]
