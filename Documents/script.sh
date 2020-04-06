#!/usr/bin/bash

Desktop() {
	ATUAL=$(xdotool get_desktop)

	echo -n "[$ATUAL]"
}

App() {
	NOMEAPP=$(xdotool getwindowfocus getwindowname)
	
	if [ "$NOMEAPP" != "" ]
	then
		echo -n "$NOMEAPP"
	else
		echo -n "Shizuku:Desktop uwu"
	fi
}

Relogio() {
	DATET=$(date "+%a %b %d, %T")

	echo -n "$DATET"
}


while true; do
	echo "$(Desktop) $(App) %{r} $(Relogio)"
	sleep 1
done
