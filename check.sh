#!/bin/sh

#$IFS=$'\n' read -d '' -r -a lines < values.txt
#status=${lines[0]}
#currentpipe=${lines[1]}
echo $status
echo $currentpipe

if [ -z $status ] & [ -z $currentpipe ]
then
    echo "NULL!! "
    echo "Has dependency!!  Triggering.... pipe1"
    curl -X POST https://circleci.com/api/v1.1/project/github/ktadepalli/WinService-circle/build?branch=master -H "Circle-Token: 22df877158909c8e95b5f5e41e712a0a346d7ca2"


    echo "Cancel current pipeline"
	
    exit 1

else
    echo "Has value...! "
    if [ $status = 'BLOCKED' ] && [ $currentpipe = 'pipe2' ]
    then
            echo "FOUND no dependency!! executing current Pipeline..."


    else
            echo "Has dependency!!  Triggering.... pipe1"
	    curl -X POST https://circleci.com/api/v1.1/project/github/ktadepalli/WinService-circle/build?branch=master -H "Circle-Token: 22df877158909c8e95b5f5e41e712a0a346d7ca2"


            echo "Cancel current pipeline"
				
	   exit 1
    fi

fi
