# Вказати базовий образ Python 3.10
FROM python:3.10-slim

# Встановити робочий каталог
WORKDIR /app

# Скопіювати залежності
COPY requirements.txt .

# Встановити залежності
RUN pip install --no-cache-dir -r requirements.txt

# Скопіювати увесь код застосунку в контейнер
COPY . .

# Відкрити порт, на якому працює FastAPI
EXPOSE 8000

# Команда запуску FastAPI
CMD ["python", "main.py"]
