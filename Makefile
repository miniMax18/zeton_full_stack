up:
	docker compose up

up-d:
	docker compose up -d

build:
	docker compose up --build

build-d:
	docker compose up --build -d

down:
	docker compose down

drop:
	docker compose down -v

load_data:
	docker compose exec web bash -c "python manage.py loaddata fixtures/*.json"

createsuperuser:
	docker compose exec web python manage.py createsuperuser

makemigrations:
	docker compose exec web python manage.py makemigrations

migrate:
	docker compose exec web python manage.py migrate

shell:
	docker compose exec web bash -c "python manage.py shell"

dbshell:
	docker compose exec web bash -c "python django-admin dbshell"

psql:
	docker compose exec -i db psql -U postgres

test:
	docker compose exec web pytest

test-v:
	docker compose exec web pytest -v

get-token:
	python zeton_django/scripts/get_token.py --u opiekun1 --p opiekun1
