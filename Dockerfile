FROM ruby:2.7.0-slim

RUN apt-get update && apt-get install -y \
  curl \
  build-essential \
  libpq-dev \
  postgresql-client
  
RUN mkdir /app
WORKDIR /app

EXPOSE 3000

COPY . .

RUN gem update bundler
RUN bundle install --jobs 5 --retry 3

ENTRYPOINT ["./entrypoint.sh"]

