<center><h1>School project ESGI group 8</h1></center>

<br/>

<center>

[![forthebadge](https://forthebadge.com/images/badges/built-by-developers.svg)](https://forthebadge.com) &nbsp;
[![forthebadge](https://forthebadge.com/images/badges/open-source.svg)](https://forthebadge.com) &nbsp;
![GitHub Repo stars](https://img.shields.io/github/stars/Vitaalx/tp_final_docker?color=yellow&logo=github&style=for-the-badge) &nbsp;
![GitHub forks](https://img.shields.io/github/forks/Vitaalx/tp_final_docker?color=blue&logo=github&style=for-the-badge)

</center>


## Installation with start.sh script

### Installation

```bash
./start.sh
```

### Re-start Project

```bash
docker-compose up
```

### Config file

```bash
./docker-compose.yml
./docker-compose.yml.run
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

## Installation without start.sh script

**Run:** *docker-compose up -d*

### Installation in app1 and app2 containers

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

### Installation in vue container

Commands:
```bash
npm install
npm run build
npm run serve
```

#### :warning: **Switch docker-compose.yml with docker-compose.yml.run** :warning:


Project is configurate ! 😉

## License
[MIT](https://choosealicense.com/licenses/mit/) 