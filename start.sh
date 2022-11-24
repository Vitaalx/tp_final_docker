#!/bin/bash

# Run docker-compose file
docker-compose up -d

#Configure app1 container
docker-compose exec app1 composer install
docker-compose exec app1 php artisan key:generate
docker-compose exec app1 php artisan config:cache
docker-compose exec app1 php artisan migrate:fresh
docker-compose exec app1 composer require laravel/ui
docker-compose exec app1 php artisan ui vue --auth
docker-compose exec app1 curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
docker-compose exec app1 source ~/.bashrc
docker-compose exec app1 nvm install 18.12.1
docker-compose exec app1 npm install && npm run dev

#Configure app2 container
docker-compose exec app2 composer install
docker-compose exec app2 php artisan key:generate
docker-compose exec app2 php artisan config:cache
docker-compose exec app2 php artisan migrate:fresh
docker-compose exec app2 composer require laravel/ui
docker-compose exec app2 php artisan ui vue --auth
docker-compose exec app2 curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
docker-compose exec app2 source ~/.bashrc
docker-compose exec app2 nvm install 18.12.1
docker-compose exec app2 npm install && npm run dev

#Configure vue container
docker-compose exec vue npm install
docker-compose exec vue npm run build
docker-compose exec vue npm run serve

# Switch docker-compose.yml for adding npm run serve command
mv docker-compose.yml docker-compose.yml.start
mv docker-compose.yml.run docker-compose.yml