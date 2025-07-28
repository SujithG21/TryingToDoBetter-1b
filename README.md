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
