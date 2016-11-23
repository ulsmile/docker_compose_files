FROM ruby:2.3.1
RUN apt-get update -qq 
RUN apt-get upgrade -y
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
ENV APP_HOME /myapp
RUN mkdir $APP_HOME
ADD . $APP_HOME/
WORKDIR $APP_HOME/
RUN gem update --system
RUN gem update bundler
RUN bundle install
WORKDIR $APP_HOME/wasepa_app/
