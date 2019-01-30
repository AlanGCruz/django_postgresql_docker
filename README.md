# Django setup container.
This repo defines a django development and production environments using ``docker``
and `docker-compose`.
### It includes:
+ `pipenv` as package manager
+ `postgresql` as database
+ .env file for `environment variables`
+ `gunicorn` with `nginx` proxy as production server and for serving static files

### It does not includes:
+ Django project

## Instructions.
1. install `docker` and `docker-compose`.
2. Create a django project running the `django-admin startproject <your-project>` command and your app using `python manage.py startapp <your-app> `.
3. `git clone git@github.com:AlanGCruz/django_postgresql_docker.git` on the same location where your manage.py file is.
4. Create a .env file using env-sample as example, fill the variables with your data.
5. run `docker-compose up -d` to build and run the containers in detached mode(run them in the background).
6. Enjoy!
