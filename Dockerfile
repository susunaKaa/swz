FROM jekyll/jekyll:4.3

LABEL maintainer="your.email@example.com"
LABEL description="Custom Jekyll development environment"

RUN apk add --no-cache \
    build-base \
    ruby-dev \
    zlib-dev \
    libffi-dev

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve", "--watch", "--force_polling", "--incremental"]
