#/bin/bash
#
a=1
while :
do
case $a in
1)
  echo -ne '-' "\b" 
  sleep 1
  ;;
2)
  echo -ne '\\' "\b"
  sleep 1
  ;;
3)
  echo -ne '|' "\b"
  sleep 1
  ;;
4)
  echo -ne '/' "\b"
  sleep 1
  ;;
*)
  a=0
  echo -n '#'
  ;;

esac
let a++
done
