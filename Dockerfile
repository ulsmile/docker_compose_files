FROM ruby:2.3.1
RUN apt-get update -qq 
RUN apt-get upgrade -y
RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
ENV APP_HOME /myapp
RUN mkdir $APP_HOME
ADD Gemfile* $APP_HOME/
WORKDIR $APP_HOME/
RUN bundle install
ADD . $APP_HOME
#RUN rails new wasepa_app --api --skip-bundle --skip-active-record
WORKDIR $APP_HOME/wasepa_app/
