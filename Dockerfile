# Используем официальный образ n8n как базу
FROM n8nio/n8n:latest

# Переключаемся на root, чтобы установить пакеты
USER root

# Обновляем списки пакетов и устанавливаем ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Возвращаемся к пользователю node (важно для безопасности и работы n8n)
USER node