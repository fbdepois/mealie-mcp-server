FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir httpx "mcp[cli]>=1.12.0" pydantic python-dotenv
WORKDIR /app/src
CMD ["python", "server.py"]
