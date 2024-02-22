#!/bin/sh

# Получаем URL сайта из переменной среды или используем значение по умолчанию
URL="${1:-http://example.com}"

# Загрузка favicon с указанного сайта и вывод статуса загрузки
wget --quiet --output-document=/app/favicon.ico "${URL}/favicon.ico"

# Если загрузка успешна, выведем сообщение об этом
if [ $? -eq 0 ]; then
    echo "Favicon downloaded successfully from ${URL}"
else
    echo "Failed to download favicon from ${URL}"
fi