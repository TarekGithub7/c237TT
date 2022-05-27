#!/bin/bash
i=1
Gansw=0
        while [ $i -lt '11' ]
        do
                quest=$(cat quizQ.txt | awk '{print $1}' FS="+"| head -n $i | tail -1)
                answ=$(cat quizQ.txt | awk '{print $2}' FS="+"| head -n $i | tail -1)
                 echo "Answer by True or False"; 
		 echo "Q--"$i $quest;
                 read a
                 if [ $a == "True" ] || [ $a == "False" ] && [ $a == $answ ]
                        then
                        echo "Good Answer";
                        i=$((i+1))
			Gansw=$((Gansw+1))
			sleep 0.2
                        quest=null
                        answ=null
		elif [ $a == "False" ] || [ $a == "True" ] && [ $a != $answ ]
		then
			echo "Bad Answer";
			i=$((i+1))
			sleep 0.2
			quest=null
                        answ=null
		else 
			echo "Can you Please Write True or False";
			i=$((i+0))
                        quest=null
                        answ=null
                fi
                done
		if [ $i -eq 11 ]
		then 
			echo " You have " $Gansw" Good Answers";
		fi
