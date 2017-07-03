FROM haskell:8
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN stack setup
RUN stack install hindent
COPY project-euler-solutions.cabal /usr/src/app
RUN stack build
COPY . /usr/src/app
RUN stack build
CMD ["stack", "ghci"]
