FROM ruby:3.0.1

RUN apt-get update -qq && apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs

RUN mkdir /app
ENV APP_ROOT /app
WORKDIR $APP_ROOT
COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock
COPY . $APP_ROOT
RUN bundle install --path vendor/bundle

CMD ["bin/rails", "server", "-b", "0.0.0.0"]