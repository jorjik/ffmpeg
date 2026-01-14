# Используем официальный образ n8n как базу
FROM n8nio/n8n:latest

# Переключаемся на root, чтобы установить пакеты
USER root

# Устанавливаем ffmpeg
RUN apk add --update --no-cache ffmpeg

# Возвращаемся к пользователю node (важно для безопасности и работы n8n)
USER node