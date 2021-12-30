#!/bin/bash

if [ $1 = "-u" ]
then 
    git checkout $3
    git pull --rebase

    git checkout $2
    git pull --rebase

    git checkout $3
    git rebase $2

    git checkout $2
fi

if [ $1 = "-v" ]
then
    cat ../docs/version.txt
fi

if [ $1 = '-h' ]
then
    cat ../docs/help.txt
fi