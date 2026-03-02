#!/bin/bash

while read line; do
  echo "${line}"
done < <(ls ~)
#done < $1
exit 0

# we can't pipe to while loop, but we could use process substitution

# --> done < <(ls ~)
