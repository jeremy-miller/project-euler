FROM haskell:8
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN stack setup
RUN stack install hindent hlint hspec
COPY stack.yaml /usr/src/app
COPY project-euler.cabal /usr/src/app
RUN stack build --only-dependencies
COPY . /usr/src/app
RUN stack build
CMD ["stack", "ghci"]
