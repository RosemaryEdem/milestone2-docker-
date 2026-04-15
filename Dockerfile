FROM python:3.11-slim

WORKDIR /app

COPY app.py .

RUN echo "Application ready"

CMD ["python", "app.py"]
