#!/bin/bash -x
LIST=($(((RANDOM%900)+100)) $(((RANDOM%900)+100)) $(((RANDOM%900)+100)) $(((RANDOM%900)+100)) $(((RANDOM%900)+100)))
#LIST=()
		  echo ${arr[@]}
#echo ${arr[*]}
#echo ${arr[@]:0}
#echo ${arr[*]:0}

((${#LIST[@]}))
		  MIN=${LIST[0]}
		  MAX=$MIN
		  if ((${#LIST[@]} == 0)); then echo "More numbers are needed."; fi

		  if ((${#LIST[@]}>0)); then
		  for i in ${LIST[@]}; do
		  if (($i>$MAX)); then
		  MAX=$i
		  fi

		  if (($i<$MIN)); then
		  MIN=$i
		  fi
		  done

		  echo Max is: $MAX
		  echo Min is: $MIN
		  fi
