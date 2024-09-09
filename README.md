# genidicon
an _identicon_ is a visual representation of a hash value, usually of a unique user ID,
that uses the form of an avatar to quickly identify the user, while protecting the user's privacy.

`genidicon` is a simple CLI tool written in gleam. it takes an input string and uses it to generate an identicon!
it's a simple project that glues together other packages from the gleam ecosystem:
* `clad`, the command-line argument decoder
* `glidicon` does the heavy lifting of encoding our text to an image
* `simplifile` handles file I/O

## usage
```sh
$ genidicon --input <STRING>
```
your identicon will be saved to the current directory as `<STRING>.png`

## install
```sh
gleam run -m gleescript
cp ./genidicon <YOUR_PATH>
```

## disclaimer
i made this to satisfy my own itch to learn gleam and explore its ecosystem.
i may or may not decide to flesh this project out with more features later!
