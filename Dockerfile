# Elixir: https://hub.docker.com/_/elixir/
FROM elixir:1.4.0
ENV DEBIAN_FRONTEND=noninteractive
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs
WORKDIR /chatapp
ADD . /chatapp
