#!/bin/bash

mkdir -p directory
touch file;
touch latest_file

if [ -a ./file ]; then
   echo "-a ./file | file exist";
fi
   
if [ -d ./directory ]; then
   echo " -d ./directory | directory exist"
fi
   
if [ -e ./file ]; then
   echo "-e ./ file | same as -a option. -e ./file"
fi
   
if [ -f ./file ]; then
   echo "-f ./file | This is absoulutely file"
fi
   
if [ -s ./file ]; then
   echo "-s ./file | File exist. not empty"
fi
   
if [ -w ./file ]; then
   echo "-w ./file | write permission on file"
fi
   
if [ -x ./file ]; then
   echo "-z ./file | execution permission on file"
fi
   
if [ -N ./file ]; then
   echo "-N ./file | file was modified since it was last read"
fi
   
if [ -O ./file ]; then
   echo "-O ./file | You own file"
fi
   
if [ -G ./file ]; then
   echo "-G ./file | file's group ID matches yours"
fi
   
if [ file -nt ./latest_file ]; then
   echo "file -nt ./latest_file | file is newer than latest_file"
fi
   
if [ file -ot ./latest_file ]; then
   echo "file -ot ./latest_file | file is older than latest_file"
fi
