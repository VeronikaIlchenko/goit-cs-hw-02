# goit-cs-hw-02

Домашнє завдання до модуля «Основи операційних систем».

## Завдання 1 — перевірка доступності сайтів

Файл: `website_status.sh`. Скрипт перевіряє сайти зі списку через `curl` (з урахуванням переадресацій, `-L`) і записує результат у `website_status.log`.

```bash
chmod +x website_status.sh
./website_status.sh
cat website_status.log
```

## Завдання 2 — FastAPI + PostgreSQL у Docker

Застосунок клоновано з `GoIT-Python-Web/Computer-Systems-hw02`. Додано `Dockerfile` та `docker-compose.yaml`, у `conf/db.py` хост `localhost` замінено на ім'я сервісу `postgres`.

```bash
docker-compose up --build
```

Застосунок: http://localhost:8000 → кнопка «Перевірити БД» → `Welcome to FastAPI!`
