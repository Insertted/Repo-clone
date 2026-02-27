# Инструкция и код
## Как использовать:

Для .sh: Используйте терминал Git Bash в VS Code.

Для .ps1: Используйте обычный терминал PowerShell.

Пути: Обязательно замените /path/to/... на свои реальные пути к папкам.

Bash Script (update.sh)
```Bash

REPO_DIR="C:\path\to\folder"     # Где лежит папка с .git
TARGET_DIR="C:\path\to\folder"     # Куда копировать файлы

echo "Updating . . ."

cd "$REPO_DIR" || { echo "ОШИБКА: Не удалось перейти в $REPO_DIR"; exit 1; }


git pull || { echo "ОШИБКА: Не удалось выполнить git pull"; exit 1; }

echo "Копирую файлы в $TARGET_DIR..."
cp -rf "$REPO_DIR"/* "$TARGET_DIR" --exclude=".git" 2>/dev/null

echo "Update completed successfully!"
```
PowerShell Script (update.ps1)
```PowerShell

$RepoPath = "C:\path\to\folder"
$DestPath = "C:\path\to\folder"

Write-Host "--- Начало процесса ---" -ForegroundColor Cyan

Set-Location -Path $RepoPath -ErrorAction SilentlyContinue
if ($?) {
    Write-Host "Выполняем git pull..."
    git pull
} else {
    Write-Host "Ошибка: Путь $RepoPath не найден." -ForegroundColor Red
    exit
}

Write-Host "Копируем файлы в $DestPath..."
Copy-Item -Path "$RepoPath\*" -Destination $DestPath -Recurse -Force -Exclude ".git"

Write-Host "Завершено успешно!" -ForegroundColor Green
```

## Коротко о главном

git pull - Забирает новый код

rsync - копирует только изменения и заменяет старые файлы

--exclude - не трогает .git