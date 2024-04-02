# Docker-wrapper для интеграции фронтэнда и бекэнда Sphere-Ya

## Запуск среды разработки

### 1. В папку 'docker_wrapper' склонировать backend

```
git clone git@github.com:Sphere-Ya/backend.git -b develop backend 
```
или
```
git clone https://github.com/Sphere-Ya/backend.git -b develop backend
```

### 2. В папку 'docker_wrapper' склонировать frontend

```
git clone git@github.com:Sphere-Ya/frontend.git -b develop frontend
```
или
```
git clone https://github.com/Sphere-Ya/frontend.git -b develop frontend 
```

### 3.  Скопируйте все из файла .env.example в файл .env и актуализируйте данные по необходимости

### 4. В папке 'docker_wrapper' запустить docker-compose.yml:

```
docker-compose up -d
```

### 5. Остановить:

```
docker-compose down
```

### 6. Пересобрать

```
docker-compose build --no-cache --pull
```