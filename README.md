# Laravel Project Template

! Delete project from src!
! Delete comments

Create & fill mysql.env & nginx.conf files

create project in src: docker compose run --rm composer create-project laravel/laravel .
docker compose run --rm artisan key:generate
in .env file enter db data (DB_HOST=mysql)
docker compose run --rm artisan migrate (--force?)

rise vite server?
add bootstrap/tailwind?

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

