# tdl-runner-hmmm

Runner for the test language `hmmm` :-D

This runner repo is used to describe the contract needed to enable coverage colection.

## 1. Language detection
 
The file `language.tdl` should contain a unique string describing the language. This string is used to match the container that will process the coverage.

## 2. Coverage collection

The `get_coverage_for_challenge.sh` script is triggered and the expectation is that is should return a zero status code.
Upon succesful completion, the coverage value should be located into the `coverage.tdl` file.
 
## 3. The "done" tags

The repo is tagged in a similar way a candidate runner repo will be tagged upon round completion.
Currently there are two tags defined:
- TCH_R1/done - 33% coverage
- TCH_R2/done - 44% coverage

## 4. Check for CRLF

`script_with_CRLF.sh` contains CRLF, other files are free from it.
- A special tag "CRLF/test" can be used to trigger this behaviour

Use the below command to test out if files contain CRLF or not

```
find . -not -type d -exec file "{}" ";" | grep CRLF
```

Use the .gitattributes file to describe the git behaviour in regards to CRLF files.
