# Базовый образ Python3.8
FROM python:3.8-slim
# Метка информационное поле
LABEL maintainer="shakhidayu@gmail.com"
# Устанавливаем зависимости
# RUN apk add --update git
# Задаём текущую рабочую директорию
WORKDIR /usr/src/
# Копируем код из локального контекста в рабочую директорию образа
# COPY . .
# Задаём значение по умолчанию для переменной
ARG my_var=my_default_value
# Настраиваем команду, которая должна быть запущена в контейнере во время его выполнения
ENTRYPOINT ["python", "https://github.com/bismilyah/123/blob/main/mygrad.py", "my_var"]
# Открываем порты
EXPOSE 8000
# Создаём том для хранения данных
VOLUME /my_volume
