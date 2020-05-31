FROM ruby:2.7-alpine

RUN apk update \
&& apk upgrade \
&& apk add --update --no-cache \
build-base curl-dev git postgresql-dev \
yaml-dev zlib-dev tzdata

WORKDIR /usr/src/app

ENV RAILS_ENV=development

COPY Gemfile* ./

RUN bundle install

COPY . .

ENTRYPOINT ["./entrypoint.sh"]

