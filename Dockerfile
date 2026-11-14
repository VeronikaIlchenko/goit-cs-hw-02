FROM python:3.11-slim

# Робоча директорія всередині контейнера
WORKDIR /app

# Системні залежності для збірки psycopg2
RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Встановлюємо залежності Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо код застосунку
COPY . .

EXPOSE 8000

CMD ["python", "main.py"]
