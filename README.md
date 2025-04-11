# Laravel Project Template

! Delete project from src!
! Delete comments

Create & fill mysql.env & nginx.conf files

create project in src: docker compose run --rm composer create-project laravel/laravel .

Create .env file & in .env file enter db data (DB_HOST=mysql)

docker compose run --rm artisan key:generate
docker compose run --rm artisan migrate (--force?)

добавить в вайт конфиг:
```js
server: {
    host: '0.0.0.0', // разрешить подключения с любых ip, в нашем случае разрешает подключение с пхп контейнера
    port: 5173,
    hmr: {
        host: 'localhost', // указывает на какой урл посылать запросы из браузера (для подгрузки контента), тк браузер уже не в контейнере
        // пхп, а у нас на машине, то мы можем получить доступ к дев серверу через localhost:5173
        port: 5173,
    },
},
```
указать в .env `VITE_DEV_SERVER_URL=http://front.run:5173` - для того чтобы ларавел установил сокет соединение с контейнером front.run, а не с локалхостом (локалхостом контейнера ларавел)


docker compose run --rm front.npm i
docker compose up front.run

docker compose up nginx -d

add redis
add mailhog/mailpit


add phpcs куда? просто проверку по psr добавить

написать батник, который:
- будет стягивать эту репку, обновлять репозиторий
- можно будет указать версии ВСЕГО (или оставить по дефолту)
- у него автоматически выполнятся все команды сверху
- автоматически сгенерирует ssh ключи (? добавить имена файлов в гитигнор)

# How to install
...


- generate ssh keys (?)
- move ci/cd files

Healthchecks
docker compose ci

Long-running containers:


One-shot containers:


### bootstrap
2. docker-compose build php
docker-compose exec php npm i
docker-compose exec php npm install bootstrap @popperjs/core
docker-compose exec php npm run dev
docker-compose exec php npm run build

3. resources/css/import.bootstrap.css
@import "bootstrap/dist/css/bootstrap.min.css";

resources/js/app.js
import '../css/import.bootstrap.css';

@vite(['resources/css/app.scss', 'resources/js/app.js'])

### Контракт по фронтенду

style.css - общие стили и скрипты, в тч и компонентов; подключаем на всех страничках, даже если на какой то страничке этого компонента не будет (чтобы не засорять маленькими файлами папку)
- бутстрап таилвинд
- шрифты
- кастомные прелоадеры, модальные окна
- общие стили

pagename.css - стили для определённой страницы - пробрасываем через section тег link/script с подключением наших стилей/скриптов.

Так же в наш section со скриптами стилями можно будет пробрасывать и какие то локальные подключения библиотек, чтобы не грузить другие страницы, на которых это библиотеки не нужны.
- локальные библиотеки (по типу tsparticles)
- подключение pagename.css

В оставляй только секции и подключения style.css и script.js, всё остальное будет в страницах

