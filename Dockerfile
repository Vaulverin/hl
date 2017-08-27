# Наследуемся от CentOS 7
FROM golang:1.8-alpine

# Устанавливаем Go, создаем workspace и папку проекта
RUN mkdir -p /go/src/highload

WORKDIR /go/src/highload

COPY . /go/src/highload


# Компилируем и устанавливаем наш сервер
RUN go-wrapper install

# Открываем 80-й порт наружу
EXPOSE 80

# Запускаем наш сервер
CMD ["go-wrapper", "run"]