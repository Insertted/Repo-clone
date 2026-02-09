## Получение и подготовка к работе Альт Линукс Образование

[Получить дистрибутив](https://www.basealt.ru/alt-education)

Если вы ещё и пока на Windows

Создать загрузочную флешку лучше программой [Alt Media Writer](https://github.com/altlinux/ALTMediaWriter/releases)

Установка Альт Линукс Образование в **Virtual Box**

Установка Альт Линукс Образование рядом с Windows

Установка Альт Линукс Образование вместо Windows

Установить все необходимые приложения

Обновить ОС и установленные в ней все приложения:
```shell
epm ei --auto && epm full-upgrade -y
```



Или воспользоваться скриптом, который всё обновит и установит необходимые приложения.

Открыть **Терминал** (можно по `Ctrl+T`)

Повысить привилегии:
```shell
su-
```
и выполнить команду:
```shell
apt-get update && apt-get install -y git && git clone https://gitflic.ru/project/rurewa/altlinux.git && cd altlinux/content/scripts/ ; ./11_mfua.sh
```