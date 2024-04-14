#!/bin/bash
#
# Wild Animals Case Insensitive Helpdesk Advice
#

if shopt -q nocasematch; then
  nocase=yes;
else
  nocase=no;
  shopt -s nocasematch;
fi

echo -n "What animal did you see ? "
read animal

case $animal in
		"lion" | "tiger")
				echo "You better start running fast!"
		;;
		"cat")
				echo "Let that mouse go..."
		;;
		"dog")
				echo "Don't worry, give it a cookie."
		;;
		"chicken" | "goose" | "duck" )
				echo "Eggs for breakfast!"
		;;
		"liger")
				echo "Approach and say 'Ah you big fluffy kitty.'"
		;;
		"babelfish")
				echo "Did it fall out your ear ?"
		;;
		*)
				echo "You discovered an unknown animal, name it!"
		;;
esac

if [ nocase = yes ] ; then
        shopt -s nocasematch;
else
        shopt -u nocasematch;
fi
