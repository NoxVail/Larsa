FROM ruby:2.6.3

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update && apt-get install -qq -y google-cloud-sdk build-essential git nodejs libpq-dev cmake libgit2-dev pkg-config nano htop wget tar
RUN mkdir /app
WORKDIR /app

RUN gem install bundler --no-document
RUN bundle config git.allow_insecure true
COPY Gemfile ./
COPY Gemfile.lock ./

RUN bundle check || bundle install

ENTRYPOINT ["bundle", "exec"]
