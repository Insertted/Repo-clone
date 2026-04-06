## Python для запуска скриптов

Выполните все этапы работы с проектом по примеру с [Nginx](/content/Docker/ImageLibrary/Nginx.md)

> Никогда в разработке не используйте русские имена файлов и каталогов!

> Никогда в разработке не используйте пробелы и спец.символы в именах файлов и каталогов!

1. Создайте **Python** скрипт в **Git-bash**
```shell
echo "print('Hello from Python in Docker!')" > script.py
```

![screen](./img/1.webp)

2. Запустите скрипт в контейнере **Python** в **PowerChell**
```shell
docker run --rm -v ${pwd}:/app python:alpine python /app/script.py
```

![screen](./img/2.webp)

3. Интерактивный **Python** (опционально)
```shell
docker run -it --rm python:alpine python
```

![screen](./img/3.webp)

> Если вы обнаружили ошибку в этом тексте - сообщите пожалуйста автору!