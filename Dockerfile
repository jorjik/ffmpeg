# Используем static-ffmpeg для копирования бинарников
FROM mwader/static-ffmpeg:latest AS ffmpeg

# Используем официальный образ n8n как базу
FROM n8nio/n8n:latest

# Переключаемся на root, чтобы скопировать файлы
USER root

# Копируем статические бинарники ffmpeg и ffprobe
COPY --from=ffmpeg /ffmpeg /usr/local/bin/
COPY --from=ffmpeg /ffprobe /usr/local/bin/

# Возвращаемся к пользователю node
USER node