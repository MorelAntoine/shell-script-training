# shell-script-training

Shell script training

    Dev period: 02 january 2017 - 03 january 2017

Scripts
=======

* bin2dec

        Convert a binary number to a decimal number
        If ok, program returns 0
        If failed, program returns 1
        
* cut_mail

        Cut a mbox file to different files (1 file = 1 mail)
        If ok, program returns 0
        If failed, program returns 1

* factorial

        Compute the factorial of a number
        If ok, program returns 0
        If failed, program returns 1
       
* replace

        Replace string in a file, take 3 parameters :
            * Original_stringfile
            * Replace_stringfile
            * File

* killall

        Kill all processes
        option: -user user1 ... : Kill all processes for user1, ...
                -pid pid1 ... : Kill a process with pid pid1, ...
                -prog prog1 ... : Kill all processes whose program's name is prog1, ...
                -all : Kill all processes

* primary

        Diplay n first primary number

* upcase_lowcase

        Upcase or lowcase input
        -u : upper
        -l : lower
        exemple:
            cat test.txt | ./upcase_lowcase -u
            HELLO WORLD !
            TOTO
            
* list.sh

        Contain 2 functions :
            add_in_list value list_name
            display_list list_name
        
        List example :
        $> echo $my_list
        5,my_list2
        $> echo $my_list2
        12,my_list3
        $> echo $my_list3
        7,my_list4
        $> echo $my_list4
        42,0
        
        Main function example :
        $> cat main.sh
        my_list="5,my_list2"
        my_list2="12,my_list3"
        my_list3="7,my_list4"
        my_list4="42,0"
        
        echo "Display list :"
        display_list "$my_list"
        
        echo "Add elem in list"
        add_in_list 2 "$my_list"
        add_in_list 3 "$my_list"
        add_in_list 4 "$my_list"
        add_in_list 5 "$my_list"
        
        echo "Display list :"
        display_list "$my_list"
        
        Test example :
        $> cp ./list.sh /tmp/test.$$
        $> cat main.sh >> /tmp/test.$$
        $> /tmp/test.$$
        Display list :
        5
        12
        7
        42
        Add elem in list
        Display list :
        5
        12
        7
        42
        2
        3
        4
        5
        $>
        
        Each element of the list contains a string splitted by a ','.
        Left of the string is the data
        Right of the string is the next elem of list. If 0, this element is the last element of list.

* db

        Update a file :
        
        Example :
        $>cat file
        nom : baptiste
        age : 22
        profession : etudiant
        
        nom : davril
        prenom : geoffrey
        profession : etudiant
        
        profession : y'en a pas :)
        nom : toto
        prenom : le super toto de la mort qui tue et qui fait mal
        age : 21
        
        $> ./db file
        $> echo $?
        0
        $> cat file
        age : 22 / nom : baptiste / prenom :  / profession : etudiant
        age :  / nom : davril / prenom : geoffrey / profession : etudiant
        age : 21 / nom : toto / prenom : le super toto de la mort qui tue et qui fait mal / profession : y'en a pas :)


Made By
=======

> Antoine MOREL

> Dylan DEU
