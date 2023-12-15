#!/bin/zsh

# get actual outlook mail id
mid=$(task _get $1.mailid)

if [ "$mid" != "" ]
then
    automator -i $mid ~/Library/Services/Open\ TaskWarrior\ Mail.workflow
else
    # no mail associated with task
    exit(-1)
fi
