## PostgreSQL

> Никогда в разработке не используйте русские имена файлов и каталогов!

> Никогда в разработке не используйте пробелы и спец.символы в именах файлов и каталогов!

Запуск PostgreSQL с паролем

в **Windows Powershell**
```shell
docker run -d ^
  --name my-postgres ^
  -p 5432:5432 ^
  -e POSTGRES_PASSWORD=mysecretpassword ^
  postgres:alpine
```

![screen](./img/1.webp)
Подключиться через psql
```shell
docker exec -it my-postgres psql -U postgres
```
![screen](./img/2.webp)
- Выполнить несколько демонстрационных команд, например:

Получить список баз данных:
```sql
\l
```
![screen](./img/3.webp)
Получить версию:
```sql
SELECT version();
```
![screen](./img/4.webp)
выйти из БД
```sql
exit
```
![screen](./img/5.webp)

> Если вы обнаружили ошибку в этом тексте - сообщите пожалуйста автору!