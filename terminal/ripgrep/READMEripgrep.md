# Ripgrep Search Script

This repository contains a Bash script for searching files with ripgrep. It provides an easy interface to search for whole words or partial matches.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

1. You should have `ripgrep (rg)` installed on your machine.
2. You should have Bash installed on your machine.

### Installing and Running the Script

1. Clone the repository or download the Bash script (`rgsearch.sh`).
2. Move the script into a directory in your `PATH`. For example, you can create a `binary` directory in your home directory and add it to your `PATH`:

    ```
    mkdir ~/binary
    cp -rp rgsearch.sh ~/binary
    ```

3. Add the new `binary` directory to your `PATH` in your `.zshrc` or `.bashrc` file:

    ```
    export PATH="$HOME/binary:$PATH"
    ```

4. You can now run the script from any directory:

    ```
    rgsearch.sh -w 'search_term'
    ```

### Using the Script

The script has the following usage:

- Search for a term anywhere in a file: `rgsearch.sh search_term`
- Search for whole words only: `rgsearch.sh -w search_term`

The `-w` option causes `rg` to only match whole words. The script displays the search results with `less -R`, preserving the color output from `rg`.

### Options

- `-h` : Display help and exit.
- `-w` : Only match whole words.

If you attempt to use an invalid option, the script will notify you and display the usage information.

If you do not provide a search term, the script will notify you and display the usage information.

