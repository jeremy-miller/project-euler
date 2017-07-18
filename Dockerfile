FROM haskell:8
RUN mkdir -p /usr/src/app
RUN apt-get update && apt-get install -y curl
RUN curl -L http://github.com/rubik/stack-hpc-coveralls/releases/download/v0.0.4.0/shc-linux-x64-8.0.1.tar.bz2 | tar -xj -C /usr/local/bin/
WORKDIR /usr/src/app
RUN stack setup
RUN stack install hindent hlint hspec
COPY stack.yaml /usr/src/app
COPY project-euler.cabal /usr/src/app
RUN stack build --only-dependencies
COPY . /usr/src/app
RUN stack build
CMD ["stack", "ghci"]
