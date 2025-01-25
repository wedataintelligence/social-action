FROM ruby:3.3.7-bookworm

RUN gem install bundle

RUN mkdir /app
WORKDIR /app
COPY . .
ENTRYPOINT ["ruby", "/app/entrypoint.rb"]