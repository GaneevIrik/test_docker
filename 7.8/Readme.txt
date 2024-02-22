Собрать контейнер
docker build -t favicon-downloader .


Запуск контейнера с передачей в параметре название сайта
docker run -d -e URL="http://example.com" favicon-downloader