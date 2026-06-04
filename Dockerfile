FROM ruby:3.3.6-slim

# System dependencies
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy app code
COPY . .

# Precompile assets
RUN SECRET_KEY_BASE=placeholder bin/rails assets:precompile

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
