FROM ruby:2.2.2
MAINTAINER alock@groupon.com

RUN apt-get update

WORKDIR /app
ADD Gemfile      /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN RAILS_ENV=test bundle install --no-deployment

ADD . /app

CMD bash -c "bundle exec rake test"
