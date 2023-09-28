  #!/bin/bash

# arch
arch=`checkupdates | wc -l`
# AUR
aur=`checkupdates-aur | wc -l`

if [ "$arch" -eq "0" -a "$aur" -eq "0" ]
	then echo "<fc=white><fn=2>   </fn></fc><fc=white>$arch </fc><fc=white><fn=2></fn></fc><fc=white> $aur</fc>"

elif [ "$arch" -gt "0" -a "$aur" -eq "0" ]
	then echo "<fc=#6790eb><fn=2>   </fn></fc><fc=white>$arch </fc><fc=white><fn=2></fn></fc><fc=white> $aur</fc>"
elif [ "$arch" -eq "0" -a "$aur" -gt "0" ]
	then echo "<fc=white><fn=2>   </fn></fc><fc=white>$arch </fc><fc=#6790eb><fn=2></fn></fc><fc=white> $aur</fc>"
else
	echo "<fc=#6790eb><fn=2>   </fn></fc><fc=white>$arch </fc><fc=#6790eb><fn=2></fn></fc><fc=white> $aur</fc>"
fi
exit 0
