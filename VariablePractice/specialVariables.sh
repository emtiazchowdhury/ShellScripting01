#!/bin/bash

echo "this script is called: $0"
echo "number of arguments passed to the scripts: $#"
echo "number of arguments passed to the script: $@"
echo "Exit status of the last command executed: $?"
echo "Process ID of the current scripts: $$"
echo "Process ID of the last background: $!"
 
#sh specialVariables.sh 1 3 4 5 6 7 8 9 10