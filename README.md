# qp

`qp` (quickpoint) is a shell script that saves and loads checkpoints in your filesystem so you can easily record and navigate (long directories) without setting environment variables.

## Setup

Put `qp` somewhere in your `PATH` and make it executable. For example,

```sh
cp qp /usr/bin
chmod +x /usr/bin/qp
```

## Usage

```help
Usage: qp [OPTION] [NAME] [PATH]
Saves and loads filesystem paths as checkpoints, which are saved in $HOME/.config/qp/.

Functions
    -d, --drop NAME       drop: delete checkpoint NAME.
    -h, --help            help: print this help message.
    -l, --load NAME       load: print this checkpoint.
    -s, --save NAME       save: save working directory as checkpoint NAME.
    -s, --save NAME PATH  save: save (absolute) PATH as checkpoint NAME.
    -t, --table           table: print table of checkpoints.
    -v, --version         version: print version.
```

## Licence

The MIT License (MIT)

## Acknowledgements

- [Smashicons](https://www.flaticon.com/authors/smashicons) for the [logo](https://www.flaticon.com/free-icon/flag_148882).
