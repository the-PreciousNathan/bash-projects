#!/bin/bash

echo "Welcome!"
echo "Please input the file name to be created: "
read inbox

echo $inbox >> files.txt
echo "File name has been created, use the command cat files.txt to confirm"

