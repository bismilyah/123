# Базовый образ Python3.8
FROM python:3.8-slim
# Метка информационное поле
LABEL maintainer="shakhidayu@gmail.com"
# Устанавливаем зависимости
# RUN apk add --update git
RUN pip install --upgrade pip
RUN pip install --no-cache-dir numpy sympy scipy matplotlib
# Задаём текущую рабочую директорию
WORKDIR /usr/src/
# Копируем код из локального контекста в рабочую директорию образа
# COPY . .
# Задаём значение по умолчанию для переменной
ARG my_var=1
# Настраиваем команду, которая должна быть запущена в контейнере во время его выполнения
ENTRYPOINT ["python", "mygrad.py", "my_var"]
# Открываем порты
EXPOSE 8000
# Создаём том для хранения данных
VOLUME /my_volume
