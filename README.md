#placeholder.sh

Very thin command-line wrapper for [placehold.it](http://placehold.it). Accepts 3 arguments:

- Width
- Height
- Text (optional)

## Usage

```
ph 300 200
```

This will create a file named 300x200.png in your current directory.

If you specify the third argument, the image will have the text written on it and the file will be named after the argument, for example:

```
placeholder.sh 300 200 "Sample Text"
```

Will create a file called Sample Text.png in your current directory.

## Installation

The project comes with a Makefile which copies ```placeholder.sh``` file to ```/usr/local/bin``` and renames script to ```ph```.

Execute this:

```
make
```
