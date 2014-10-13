#!/bin/bash

# mysql credentials

user="root"
pass="somepass"

# list all databases

all_dbs="$(mysql -u$user -p$pass -Bse 'show databases')"

#exclusion list. skip dbs named the following and run sql command.

for db in $all_dbs
     do 
        if test $db != "information_schema" 
            then if test $db != "performance_schema"
            then if test $db != "mysql"
            then if test $db != "somea"  
            then if test $db != "someb"  
            then if test $db != "somec"
            then if test $db != "test" 
            then mysql -u$user -p$pass $db -sN -e "source update.sql;"
        fi
        fi
        fi
        fi
        fi
        fi
    fi
     done
