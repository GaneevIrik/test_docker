FROM ubuntu:latest

# Установка утилиты wget
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# Создание директории для сохранения favicon
RUN mkdir -p /app

# Копирование скрипта загрузки favicon в контейнер
COPY download_favicon.sh /app/download_favicon.sh

# Установка прав на исполнение скрипта
RUN chmod +x /app/download_favicon.sh

# Запуск скрипта при запуске контейнера с передачей URL сайта через переменную среды
CMD ["sh", "-c", "/app/download_favicon.sh \"$URL\""]