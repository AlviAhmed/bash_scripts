#!/bin/bash 

var=$1 
echo $var
dir_sel=$(pwd)
delim="/"
str=$dir_sel$delim 
str2=$str$var
echo $str2

