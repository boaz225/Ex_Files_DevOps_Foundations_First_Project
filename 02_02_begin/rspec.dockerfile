FROM ruby:alpine
MAINTAINER Inki Yoo

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ] # 'rspec'; docker run this_image  rspec  --option_1 --option_2
