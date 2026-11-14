FROM python:3.11-slim

WORKDIR /app

RUN groupadd -g 10001 appgroup && \
    useradd -u 10001 -g appgroup -s /bin/false appuser

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src/
COPY config/ ./config/

RUN chown -R appuser:appgroup /app
USER 10001:10001

ENV PYTHONPATH=/app \
    PYTHONUNBUFFERED=1

ENTRYPOINT ["python", "src/server.py"]
