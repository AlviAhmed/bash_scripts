#!/bin/bash
uin=$1
tbnid=$(xinput list | grep Trackball | sed -r 's/.*id=(\S+).*/\1/')
tbnidhuge=$(xinput list | grep HUGE | sed -r 's/.*id=(\S+).*/\1/' | head -1)
tbnid1=$(xinput list | grep Full-Speed | sed -r 's/.*id=(\S+).*/\1/')

if [ -z "$tbnidhuge" ] 
then 
	notify-send "No track ball found" 
else
ctmid=$(xinput -list-props $tbnidhuge | grep Matrix |  sed -r 's/.* Matrix \((\S+)\).*/\1/')
xinput -set-prop $tbnidhuge $ctmid $uin 0 0 0 $uin 0 0 0 1
notify-send "Current Mouse Sensitivity: $uin"
fi    
 

# if [[ -z "$tbnid" ]] &&  [[ -z "$tbnid1" ]] 
# then 
#     notify-send "No track ball found"
# elif [[ ! -z "$tbnid" ]] && [[ -z "$tbnid1" ]]
# then
#     ctmid=$(xinput -list-props $tbnid | grep Matrix |  sed -r 's/.* Matrix \((\S+)\).*/\1/')
# elif [[ -z "$tbnid" ]] && [[ ! -z "$tbnid1" ]]
# then
#     ctmid=$(xinput -list-props $tbnid1 | grep Matrix |  sed -r 's/.* Matrix \((\S+)\).*/\1/')
# else
#     xinput -set-prop $tbnid $ctmid $uin 0 0 0 $uin 0 0 0 1
#     notify-send "Current Mouse Sensitivity: $uin"
# fi    


# xinput -set-prop 13 167 0.5 0 0 0 0.5 0 0 0 1 <- for thumb trackball
