# Docker clean with php & mysql

School project ESGI group 8

## Installation

installation avec docker

```bash
docker-compose up -d
docker-compose up
```

## Config file

```bash
./docker-compose.yml
./app1/Dockerfile
./app2/Dockerfile
./app1/.env
./app2/.env
./.env
./nginx/conf.d/default.conf
./nginx2/conf.d/default.conf
./mysql/my.cnf
./php/local.ini
```
create .env file with .env.example

## Installation in container app1 and app2

Commands:
```bash
composer install
php artisan key:generate
php artisan config:cache
php artisan migrate:fresh
composer require laravel/ui
php artisan ui bootstrap --auth
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc   
nvm install 18.12.1
npm install && npm run dev
```

Project is configurate ! 😉

## License
[MIT](https://choosealicense.com/licenses/mit/) 