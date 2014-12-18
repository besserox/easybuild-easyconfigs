#!/bin/bash

HOST=$1
shift

if [ $SHELL = "/bin/tcsh" ]
then
    exec oarsh $HOST "setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}; setenv PATH ${PATH}; $@"
else

    exec oarsh $HOST "export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}; export PATH=${PATH}; $@"
fi


