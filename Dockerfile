FROM ruby:2.2.2
MAINTAINER alock@groupon.com

RUN apt-get update
RUN RAILS_ENV=test bundle install --no-deployment
RUN bundle exec rake test
