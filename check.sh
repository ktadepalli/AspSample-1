#!/bin/sh
set -e
#$IFS=$'\n' read -d '' -r -a lines < values.txt
#status=${lines[0]}
#currentpipe=${lines[1]}
statuss="BLOK"
currentpipes="pip2"

if [ -z $status ] & [ -z $currentpipe ]
then
    echo "Its NULL..... Trigger pipe1"

        echo "Cancel current pipeline"
		 exit 1

else
    echo "Has value...! $statuss: $currentpipes"
        if [ "$statuss"=="BLOK" ] & [ "$currentpipes"=="pip2" ]
    then
            echo "Executing current Pipeline..."


    else
            echo "Condition not mactched.Triggering Pipe1"

                echo "Cancel current pipeline"
				
				exit 1
    fi

fi
