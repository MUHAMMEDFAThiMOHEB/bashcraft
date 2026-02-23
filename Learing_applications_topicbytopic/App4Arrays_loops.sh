#!/bin/bash

# Authar: Muhammad Fathy Moheb
# Date Created: 22/2/2026

bat textfiles/urls.txt

readarray -t urls < textfiles/urls.txt

for url in "${urls[@]}"; do
  websitename=$(echo $url | cut -d "." -f 2)
  curl --head "$websitename" > "$websitename".txt
done

lsd -l *.txt
exit 0

