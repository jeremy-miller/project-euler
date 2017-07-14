FROM haskell:8
RUN mkdir -p /usr/src/app
RUN mkdir -p $HOME/.local/bin
ENV PATH $HOME/.local/bin:$PATH
RUN apt-get update && apt-get install -y curl
RUN curl -L https://www.stackage.org/stack/linux-x86_64 | tar xz --wildcards --strip-components=1 -C $HOME/.local/bin '*/stack'
WORKDIR /usr/src/app
RUN stack setup
RUN stack install hindent hlint hspec
COPY stack.yaml /usr/src/app
COPY project-euler.cabal /usr/src/app
RUN stack build --only-dependencies
COPY . /usr/src/app
RUN stack build
CMD ["stack", "ghci"]
