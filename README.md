# qp

`qp` (quickpoint) is a shell script that saves and loads checkpoints in your filesystem so you can easily record and navigate (long directories) without setting environment variables.

## Setup

Put `qp.sh` somewhere in your `PATH` and make it executable. For example,

```sh
cp qp.sh /usr/bin
chmod +x /usr/bin/qp.sh
```

## Usage

```help
Usage: qp.sh [OPTION] [NAME] [PATH]
Saves and loads filesystem paths as checkpoints, which are saved in $HOME/.config/qp/.

Functions
    -d, --drop [NAME]         drop: delete checkpoint NAME.
    -h, --help                help: print this help message.
    -l, --load [NAME]         load: move to this checkpoint.
    -s, --save [NAME]         save: save working directory as checkpoint NAME.
    -s, --save [NAME] [PATH]  save: save PATH as checkpoint NAME.
    -t, --table               table: print table of all checkpoints.
    -t, --table [NAME]        table: point path of checkpoint NAME.
    -v, --version             version: print version.
```

## Licence

The MIT License (MIT)