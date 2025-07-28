This project processes a collection of PDFs using a persona and task, and returns:
- Top ranked relevant sections (title + page)
- Refined subsection content for analysis

## 🛠 Requirements

- Docker installed (Linux/Mac/Windows)
- Your collection folder should contain:
  - `collection1_input.json`
  - A `PDFs/` directory with relevant documents

## 🐳 Running with Docker

### 1. Build the Docker image:

```bash
docker build -t adobe-r1b .


## 2. Run the container with mounted input/output folders:

docker run --rm \
  -v "$(pwd)/Collection_1":/app/Collection_1 \
  -v "$(pwd)/output":/app/output \
  adobe-r1b


✅ How to Run for Collection 1

docker build -t adobe-r1b .
docker run --rm \
  -v "$(pwd)/Collection_1":/app/Collection_1 \
  -v "$(pwd)/output":/app/output \
  adobe-r1b \
  /app/Collection_1 --top_k 15


✅ How to Run for Collection 2

docker run --rm \
  -v "$(pwd)/Collection_3":/app/Collection_2 \
  -v "$(pwd)/output":/app/output \
  adobe-r1b \
  /app/Collection_3 --top_k 15

✅ How to Run for Collection 3
docker run --rm \
  -v "$(pwd)/Collection_3":/app/Collection_3 \
  -v "$(pwd)/output":/app/output \
  adobe-r1b \
  /app/Collection_3 --top_k 15

