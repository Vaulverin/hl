SET app=fastapi
SET VER=0.1

docker build -t %APP%:%VER% .
docker run --rm -p 8080:80 -t %APP%:%VER%