# Укажите базовый образ
FROM python:3.11-slim

# Устанавливаем рабочий каталог
WORKDIR /app

# Копируем файлы с зависимостями
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы приложения
COPY . .

# Команда при запуске контейнера
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]