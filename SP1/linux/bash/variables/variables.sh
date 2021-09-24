#/bin/sh
PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hello world!'
FILELIST=`ls`
FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt

echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"
echo $greeting" now with spaces: $greeting"
echo $FileWithTimeStamp


#!/bin/bash
# Change this code
BIRTHDATE=
Presents=
BIRTHDAY=


# Testing code - do not change it

if [ "$BIRTHDATE" == "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Saturday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi