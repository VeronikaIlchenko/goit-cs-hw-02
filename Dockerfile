FROM python:3.11-slim

# Робоча директорія всередині контейнера
WORKDIR /app

# Встановлюємо залежності Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо код застосунку
COPY . .

EXPOSE 8000

CMD ["python", "main.py"]
