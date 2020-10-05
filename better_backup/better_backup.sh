#!/bin/bash  



printf "Define source directory\n"
read source_direc

while [ -z "$source_direc" ]; do 
    printf "Error Null input please try again \n"
    printf "Default destination or custom? (type def or cust) \n"
    read source_direc
    if [ ! -z $source_direc ];
    then
        break;
    fi    
done
printf "\n Source directory: "
echo $source_direct

printf "\n Default destination or custom? (type def or cust) \n"
read cust_dest

while [ -z "$cust_dest" ]; do 
    printf "Error Null input please try again \n"
    printf "Default destination or custom? (type def or cust) \n"
    read cust_dest
    if [ ! -z $cust_dest ];
    then
        break;
    fi    
done
printf "\n"

if [[ "$cust_dest" == "def" ]]; then
    destination= "~/backup/."

elif [[ "$cust_dest" == "cust" ]]; then
    printf "Which destination would like the backup to be in? \n"
    read destination
    while [ -z "$destination" ]; do 
        printf "Error Null input please try again \n"
        printf "Specify destination folder \n" 
        read destination
        if [ ! -z $destination ];
        then
            break;
        fi    
    done
else
    printf "Command not found please try again \n"
fi

printf " Destination of backup:   "
printf $destination

printf " \n Do you want tar or normal file system? (tar or norm) \n"
read file_format

while [ -z "$file_format" ]; do 
    printf "Error Null input please try again \n"
    printf "Do you want tar or normal file system? (tar or norm) \n"
    read file_format
    if [ ! -z $file_format ];
    then
        break;
    fi    
done

printf " Current file format of backup:   "
echo $file_format

if [[ "$file_format" == "tar" ]]; then
	back_time = `date +%b-%d-%y`
    tar_dest = $destination/$back_time.tar.gz
    echo $tar_dest
    tar -cpzf $dir_sel $tar_dest
fi



