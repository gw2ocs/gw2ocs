FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /gw2ocs
WORKDIR /gw2ocs
ADD Gemfile /gw2ocs/Gemfile
ADD Gemfile.lock /gw2ocs/Gemfile.lock
RUN bundle install
ADD . /gw2ocs