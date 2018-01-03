#!/bin/bash
cd "$1"
FILE=`ls | grep '.jpg' | sort -n | head -1`

# realpath $1
#
# CWD=`pwd`
# echo $PWD

if [[ ! -z "${FILE// }" ]]; then
    OUTPUT=`echo "$1_$FILE" | sed 's/\///g' | sed 's/\ //g'`
    echo "Copying ${FILE} to ${3}/${OUTPUT:1}..."
    cp "${PWD}/${FILE}" "${3}/${OUTPUT:1}"
fi
