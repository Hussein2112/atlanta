lpq|awk '{print $2}'|egrep -iv 'not|job'|xargs lprm
