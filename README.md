# tdl-runner-hmmm

Runner for the test language `hmmm` :-D

This runner repo is used to describe the contract needed to enable coverage colection.

## 1. Language detection
 
The file `language.tdl` should contain a unique string describing the language. This string is used to match the container that will process the coverage.

## 2. Coverage collection

The `get_coverage_for_challenge.sh` script is triggered and the expectation is that is should return a zero status code.
Upon succesful completion, the coverage value should be located into the `coverage.tdl` file.
 
