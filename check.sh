#!/bin/sh

#$IFS=$'\n' read -d '' -r -a lines < values.txt
#status=${lines[0]}
#currentpipe=${lines[1]}
#status="BLOK"
#currentpipe="pip2"
echo $status
echo $currentpipe

if [ -z $status ] & [ -z $currentpipe ]
then
    echo "NULL!! "
    echo "Has dependency!!  Triggering.... Pipe1"

        echo "Cancel current pipeline"
		 exit 1

else
    echo "Has value...! "
    if [ $status = 'BLOK' ] && [ $currentpipe = 'pip2' ]
    then
            echo "FOUND no dependency executing current Pipeline..."


    else
            echo "Has dependency!!  Triggering.... Pipe1"

            echo "Cancel current pipeline"
				
	   exit 1
    fi

fi
