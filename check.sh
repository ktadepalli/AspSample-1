#$IFS=$'\n' read -d '' -r -a lines < values.txt
#status=${lines[0]}
#currentpipe=${lines[1]}
status="BLOK"
currentpipe="pip2"
echo $status
echo $currentpipes

if [ -z $status ] & [ -z $currentpipe ]
then
    echo "Its NULL..... Trigger pipe1"

        echo "Cancel current pipeline"
		 exit 1

else
    echo "Has value...! "
    if [ $status == 'BLOK' ] -a [ $currentpipe == 'pip3' ]
    then
            echo "Executing current Pipeline..."


    else
            echo "Condition not mactched.Triggering Pipe1"

                echo "Cancel current pipeline"
				
				#exit 1
    fi

fi
