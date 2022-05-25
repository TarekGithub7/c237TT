#!/bin/bash

WHO=`whoami`
DATE=`date +'%Y%m%d'` 
DIR=`pwd`
NBRFILES=`ls | wc -c`
BIGFILE=`ls -S | head -1`
echo "The user is " $WHO; 
echo "The date is " $DATE; 
echo "The current directory is " $DIR ;
echo "The number files " $NBRFILES;
echo "The biggest file is " $BIGFILE;
