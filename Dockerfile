FROM python:3.7.2-slim-stretch
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY . .
RUN apt-get update \
  && apt-get install -y netcat \
  && pip install --upgrade pip \
  && pip install pipenv \
  && pipenv install --system --dev
ENTRYPOINT ["/app/entrypoint.sh"]
