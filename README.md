[![MIT Licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/hyperium/hyper/master/LICENSE)
[![GHC Version](https://img.shields.io/badge/GHC-8.0-blue.svg)]()

# Project Euler Solutions
The repository contains my solutions to [Project Euler](https://projecteuler.net/archives) problems.

## Usage
This implementation uses a Docker container to isolate the execution environment.

### Prerequisites
- [Docker](https://docs.docker.com/engine/installation/)

### Setup
Before viewing any solutions, the Docker container must be built: ```docker build -t jeremymiller/project-euler-solutions .```

### Static Code Analysis
To run [hlint](https://github.com/ndmitchell/hlint#installing-and-running-hlint) on a file, execute the following command (substituting the source file path):
```docker run -it --rm jeremymiller/project-euler-solutions hlint <source file path>```

To run [hindent](https://github.com/commercialhaskell/hindent) on a file, execute the following command (substituting the source file path):
```docker run -it --rm jeremymiller/project-euler-solutions cat <source file path> | hindent```

### Run
To view solutions to specific problems, execute the following command (substituting the problem number):
```docker run -it --rm jeremymiller/project-euler-solutions stack exec solutions-exe <problem number>```
