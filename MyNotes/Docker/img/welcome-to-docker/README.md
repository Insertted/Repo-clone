## Welcome to Docker

Репозиторий welcome-to-doker для обучения базе докера и его функций


> Перед созданием проекта убедитесь, что порт `8088` не занят другим приложением!



Открытый порт 8088

![Скрин порта](../image%20copy%205.png)



Загрузка образа и запуск контейнера
```shell
docker run -d -p 8088:80 --name welcome-to-docker docker/welcome-to-docker
```



![Скрин контейнера](../image.png)

[Открыть http://localhost:8088 в браузере](http://localhost:8088)

Скрин контейнера в браузере
![скрин браузера](../image%20copy.png)



Зайти в контейнер
```shell
docker exec -it welcome-to-docker /bin/sh
```



Выполнение разных команд:

Инфа об ОС + монитор ресурсов
```shell
uname -a

top
```
![скрин ОС](../image%20copy%202.png)



Обновление программ
```shell
apk update && apk upgrade
```
![скрин приложений](../image%20copy%203.png)



Установка fastfetch и запуск fastfetch
```shell
apk add fastfetch
```
```shell
fastfetch
```
![Скрин фастфетча](../image%20copy%204.png)



Выйти из образа обратно в основную систему
```shell
exit
```


Все скриншоты в папке docker/img