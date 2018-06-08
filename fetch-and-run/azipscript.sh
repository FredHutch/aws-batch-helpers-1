#!/bin/bash


echo This is my script that lives inside a zip file.

echo Now I will display the contents of another file in the zip.

cat someotherfile.txt

echo Now I will display arguments that have been passed to me:

echo $*

echo "That's it! I'm out of here!"

