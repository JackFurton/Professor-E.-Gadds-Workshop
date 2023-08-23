# custom shell command

### wordfreq cpp

1. Setup: basic cpp project struct with main.cpp

2. Implementation cpp std library to read the text file.
 - tokenize text into words
 - std::unordered_map // std::map to count frequency of each word
 - potentially sort words based on frequency

### python script

1. wordfreq.py
 - `argparse` module to handle command-line arguments `--top` top-N frequent words
 - call compiled cpp binary using Python subprocess module
 - process the output from the cpp binary if needed
 - display results

### bash script
1. script
```
#!/bin/bash

# Directory of the current script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Call the Python script with all the arguments passed to the bash script
python3 $DIR/wordfreq.py "$@"
```

### notes
 - ensure error handling is in place
