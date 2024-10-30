#!/bin/bash
echo "Dame el nombre del fichero:"
read fichero

grep -i -E 'un.*dos|dos.*un' $fichero
