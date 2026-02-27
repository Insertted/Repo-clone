#!/bin/bash

REPO_DIR="C:\VSCODE\GitRepos\mfua"     # Где лежит папка с .git
TARGET_DIR="C:\VSCODE\GitRepos\Repo-clone"     # Куда копировать файлы

echo "Updating . . ."

cd "$REPO_DIR" || { echo "ОШИБКА: Не удалось перейти в $REPO_DIR"; exit 1; }


git pull || { echo "ОШИБКА: Не удалось выполнить git pull"; exit 1; }

echo "Копирую файлы в $TARGET_DIR..."
cp -rf "$REPO_DIR"/* "$TARGET_DIR" --exclude=".git" 2>/dev/null

echo "Update completed successfully!"

