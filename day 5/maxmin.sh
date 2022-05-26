#!/bin/bash -x
LIST=($(((RANDOM%900)+100)) $(((RANDOM%900)+100)) $(((RANDOM%900)+100)) $(((RANDOM%900)+100)) $(((RANDOM%900)+100)))

echo ${arr[@]}
#echo ${arr[*]}
#echo ${arr[@]:0}
#echo ${arr[*]:0}


MIN=${LIST[0]}
MAX=$MIN


if [ ${#LIST[@]} == 0 ]; then echo "More numbers are needed."; fi

if [ ${#LIST[@]} -gt 0 ]; then
        for i in ${LIST[@]}; do
                if [[ $i -gt $MAX ]]; then
                        MAX=$i
                fi

                if [[ $i -lt $MIN ]]; then
                        MIN=$i
                fi
        done
fi
echo Max is: $MAX
echo Min is: $MIN

