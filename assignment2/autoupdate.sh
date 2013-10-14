#!/bin/sh

while [ 1 ]
do
  make
  find . -name '*.tex' | inotifywait --fromfile - -e move -e modify
done
