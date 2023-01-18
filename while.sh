#! /bin/bash
CONT=0
while [ $CONT -lt 5 ]; do
  echo "El contador es $CONT"
  CONT=$(($CONT+1))
done
