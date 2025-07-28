# ---------- BASE ----------
FROM python:3.10-slim

# ---------- ENV & SETUP ----------
ENV DEBIAN_FRONTEND=noninteractive

# Install OS dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    poppler-utils \
    && rm -rf /var/lib/apt/lists/*

# ---------- WORKDIR ----------
WORKDIR /app

# ---------- COPY FILES ----------
COPY . /app

# ---------- PYTHON DEPENDENCIES ----------
RUN pip install --upgrade pip && \
    pip install \
    torch \
    sentence-transformers \
    pdfplumber \
    transformers \
    tqdm

# ---------- RUN DEFAULT COMMAND ----------
CMD ["python3", "main.py", "./Collection_1/", "--top_k", "15"]
