FROM ruby:3.1.0

RUN apk add build-base
RUN gem install bundler:1.17.2
RUN mkdir -p /www/example-terminal-backend
WORKDIR /www/example-terminal-backend
COPY . .
RUN bundle install
EXPOSE 4567

ENTRYPOINT ["ruby", "web.rb", "-o", "0.0.0.0"]
