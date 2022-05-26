#! /bin/bash -x

function generateRandomNumber() {

randomNumber=$((RANDOM%100 +99))

echo $randomNumber


}

function findSecondLargestAndSmallest() {
randomNumbers=("$@")

largestNumber=${randomNumbers[0]}
secondLargestNumber=${randomNumbers[0]}
smallestNumber=${randomNumbers[0]}
secondSmallestNumber=${randomNumbers[0]}


for ((i=1; i < ${#randomNumbers[@]} ; i++)) 
do
	if [ $largestNumber -lt ${randomNumbers[$i]} ]
	then
		secondLargestNumber=$largestNumber 
		largestNumber=${randomNumbers[i]}
	elif [ $secondLargestNumber -lt  ${randomNumbers[i]} ]
	then
		 secondLargestNumber=${randomNumbers[i]}

	fi
	if [ $smallestNumber -gt ${randomNumbers[i]} ]
        then
                secondSmallestNumber=$smallestNumber
                smallestNumber=${randomNumbers[$i]}
        elif [ $secondSmallestNumber -gt  ${randomNumbers[$i]} ]
        then
                 secondSmallestNumber=${randomNumbers[$i]}

        fi

done

echo "Second Largest number is $secondLargestNumber"
echo "Second Smallest number is $secondSmallestNumber"
}

function storeRandomNumber() {

i=0

while [ $i -lt 10 ]
do
	randomNumberArray[((i++))]=$(generateRandomNumber)
done

echo ${randomNumberArray[@]}

findSecondLargestAndSmallest ${randomNumberArray[@]}
}
storeRandomNumber
