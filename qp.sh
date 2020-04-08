#!/bin/bash

if [ ! -d $HOME/.config ]; then
    mkdir -p $HOME/.config;
fi

if [ ! -d $HOME/.config/qp ]; then
    mkdir -p $HOME/.config/qp;
fi

case $1 in
    -d|--drop)
        if [[ $# = 2 ]];
        then
            rm $HOME/.config/qp/$2
        fi
    ;;
    -h|--help)
        echo "Usage: qp.sh [OPTION] [NAME] [PATH]
Saves and loads filesystem paths as checkpoints, which are saved in $HOME/.config/qp/.

Functions
    -d, --drop [NAME]         drop: delete checkpoint NAME.
    -h, --help                help: print this help message.
    -l, --load [NAME]         load: move to this checkpoint.
    -s, --save [NAME]         save: save working directory as checkpoint NAME.
    -s, --save [NAME] [PATH]  save: save (absolute) PATH as checkpoint NAME.
    -t, --table               table: print table of all checkpoints.
    -t, --table [NAME]        table: point path of checkpoint NAME.
    -v, --version             version: print version.
        "
    ;;
    -l|--load)
        if [[ $# = 2 ]];
        then
            cd $(cat $HOME/.config/qp/$2)
        fi
    ;;
    -s|--save)
        if [[ $# = 2 ]];
        then
            pwd > $HOME/.config/qp/$2
        elif [[ $# = 3 ]];
        then
            echo $3 > $HOME/.config/qp/$2
        fi
    ;;
    -t|--table)
        if [[ $# = 2 ]];
        then
            cat $HOME/.config/qp/$2
        else
            for pt in $(ls $HOME/.config/qp); do
                echo $pt $(cat $HOME/.config/qp/$pt)
            done
        fi
    ;;
    -v|--version)
        echo "qp (quickpoint) v0.1.0
Copyright (c) 2020 Robert (Rupert) Wu
Licence: MIT
        "
    ;;
    *)
        echo "qp: run qp.sh -h for help"
    ;;
esac
