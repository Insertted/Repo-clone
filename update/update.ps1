# --- Настройки ---
$RepoPath = "C:\VSCODE\GitRepos\mfua"
$DestPath = "C:\VSCODE\GitRepos\Repo-clone"

Write-Host "--- Начало процесса ---" -ForegroundColor Cyan

# 1. Переход и обновление Git
Set-Location -Path $RepoPath -ErrorAction SilentlyContinue
if ($?) {
    Write-Host "Выполняем git pull..."
    git pull
} else {
    Write-Host "Ошибка: Путь $RepoPath не найден." -ForegroundColor Red
    exit
}

# 2. Копирование с заменой
# -Recurse (включая подпапки), -Force (перезаписать файлы)
Write-Host "Копируем файлы в $DestPath..."
Copy-Item -Path "$RepoPath\*" -Destination $DestPath -Recurse -Force -Exclude ".git"

Write-Host "Завершено успешно!" -ForegroundColor Green