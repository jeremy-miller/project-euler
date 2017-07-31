[![Build Status](https://travis-ci.org/jeremy-miller/project-euler.svg?branch=master)](https://travis-ci.org/jeremy-miller/project-euler)
[![Coverage Status](https://coveralls.io/repos/github/jeremy-miller/project-euler/badge.svg?branch=master)](https://coveralls.io/github/jeremy-miller/project-euler?branch=master)
[![Code Climate](https://codeclimate.com/github/jeremy-miller/project-euler/badges/gpa.svg)](https://codeclimate.com/github/jeremy-miller/project-euler)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/jeremy-miller/project-euler/blob/master/LICENSE)
[![GHC Version](https://img.shields.io/badge/GHC-8.0-blue.svg)]()

# Project Euler Solutions
My solutions to [Project Euler](https://projecteuler.net/archives) problems using Haskell.

<details>
<summary><strong>Table of Contents</strong></summary>

* [Motivation](#motivation)
* [Usage](#usage)
  + [Prerequisites](#prerequisites)
  + [Build](#build)
  + [Static Code Analysis](#static-code-analysis)
  + [Test](#test)
  + [Run](#run)
  + [Example Call](#example-call)
* [License](#license)
</details>

## Motivation
I created this project for two reasons:
1. Try Haskell
2. Try solving Project Euler problems

## Usage
This implementation uses a Docker container to isolate the execution environment.

### Prerequisites
- [Docker](https://docs.docker.com/engine/installation/)

### Build
Before viewing any solutions, the Docker container must be built: ```docker build -t jeremymiller/project-euler .```

### Static Code Analysis
To run [hlint](https://github.com/ndmitchell/hlint#installing-and-running-hlint) on a file, execute the following command (substituting the source file path):
```docker run -it --rm jeremymiller/project-euler hlint <source file path>```

To run [hindent](https://github.com/commercialhaskell/hindent) on a file, execute the following command (substituting the source file path):
```docker run -it --rm jeremymiller/project-euler cat <source file path> | hindent```

### Test
To run the tests (essentially get answers for the solved problems), execute the following command:
```docker run -it --rm jeremymiller/project-euler stack test```

### Run
To view solutions to specific problems, execute the following command (substituting the problem number):
```docker run -it --rm jeremymiller/project-euler stack exec solutions-exe <problem number>```

### Example Call
```
$ docker run -it --rm jeremymiller/project-euler stack exec solutions-exe 1
233168
```

## License
[MIT](https://github.com/jeremy-miller/project-euler/blob/master/LICENSE)
