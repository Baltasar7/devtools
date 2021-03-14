#!/bin/bash

if [ $# != 1 ]; then
    echo "error: not path argment."
    exit 1
fi

# usage
# ./strings_converter.sh <path>
# <path>: convert targets file. convert processing is recursive.

# convert string edit help
# s/<before string>/<after string>/g
# if you have more convertion patterns, copy and paste below the line and edit.
find $1 -type f | xargs sed -i 's/0000 1234 5555 6789 abcd e012 3456 ffff/eeee 1234 5555 6789 abcd e012 3456 ffff/g'
find $1 -type f | xargs sed -i 's/fedc 1234 5555 6789 abcd e012 3456 4321/cccc 1234 5555 6789 abcd e012 3456 dddd/g'

exit 0

# *.bak file backup version.
#find $1 -type f -not -name "*.bak" | xargs sed -i.bak 's/0000 1234 5555 6789 abcd e012 3456 ffff/0000 1234 5555 6789 abcd e012 3456 ffff/g'
