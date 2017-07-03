[![MIT Licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/hyperium/hyper/master/LICENSE)
[![GHC Version](https://img.shields.io/badge/GHC-8.0-blue.svg)]()

# Project Euler Solutions
The repository contains my solutions to [Project Euler](https://projecteuler.net/archives) problems.

## Usage
To see my answers to Project Euler questions, follow the steps below.

### Prerequisites
- [Docker](https://docs.docker.com/engine/installation/)

### Setup
Before viewing any solutions, the Docker container must be built: ```docker build -t jeremymiller/project-euler-solutions .```

### Run
1. The REPL can be used to view solutions.  To begin, execute the following command: ```docker run -it --rm jeremymiller/project-euler-solutions```

2. Once the REPL starts you should see a ```Prelude>``` prompt.  At the prompt, enter the following command (substituting the problem number):
```stack exec project-euler-solutions-exe <problem number>```

Example output looks like this:
```haskell
Prelude> stack exec project-euler-solutions-exe 1
233168
```
