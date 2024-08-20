


#snap list --all | awk '/disabled/{print $1, $3}' |
#    while read snapname revision; do
#        snap remove "$snapname" --revision="$revision"
#    done


snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        echo "snap remove $snapname --revision=$revision"
    done

echo "Run above commands to remove disabled snaps"


