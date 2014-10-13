#!/bin/bash

# mysql credentials

user="root"
pass="whatevah"

# list all databases

all_dbs="$(mysql -u$user -p$pass -Bse 'show databases')"       

#all dbs in list that are NOT named the following, run this mysql command

for db in $all_dbs 
     do
        if test $db != "information_schema" 
            then if test $db != "mysql" 
            then if test $db != "xdb"
            then mysql -u$user -p$pass $db -sN -e "source table.sql;"
        fi
        fi
    fi  
     done
