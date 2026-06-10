FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY pyproject.toml setup.py requirements.txt README.md LICENSE MANIFEST.in ./
COPY finance_mcp ./finance_mcp

RUN pip install --no-cache-dir .

CMD ["finance-mcp-server"]
