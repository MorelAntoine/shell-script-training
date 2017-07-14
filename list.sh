#!/bin/sh

add_in_list()
{
	name_current="";
	current_content=${2};
	index=1;
	while [ -n $current_content ];
	do
		name_next=$(echo $current_content | cut -d, -f2)
		if [ $name_next = "0" ]; then
			((index++));
			value_current=$(echo $current_content | cut -d, -f1)
			declare -g "$name_current"="$value_current,my_own_list$index"
			break;
		else
			next_content=$(eval echo '$'$name_next);
			current_content=$next_content;
			name_current=$name_next;
		fi
		((index++));
	done;
	declare -g "my_own_list$index"="${1},0"
}

display_list()
{
	current_content=${1};
	while [ -n $current_content ];
	do
		name_next=$(echo $current_content | cut -d, -f2)
		if [ $name_next = "0" ]; then
			echo $current_content | cut -d, -f1;
			break;
		else
			next_content=$(eval echo '$'$name_next);
			echo $current_content | cut -d, -f1;
			current_content=$next_content;
		fi
	done;
}
