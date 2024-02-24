#Connect quest
alias quest="sshpass -p ZXsmtdbq4011! ssh dqu7337@quest.it.northwestern.edu"
alias mount_quest='sshfs dqu7337@quest.it.northwestern.edu:/projects/b1021/Dingwen /home/dw/Documents/Research/quest_files'
alias unmount_quest='fusermount -u /home/dw/Documents/Research/quest_files'
#Download from/upload to quest
scp_quest()
{
        if [[ ($1=="down" && $2=="-r") ]]
        then
                scp -r dqu7337@quest.it.northwestern.edu:/projects/b1021/Dingwen/$3 $4
        elif [[ ($1=="down" && $2!="-r") ]]
        then
                scp dqu7337@quest.it.northwestern.edu:/projects/b1021/Dingwen/
$3 $4
        elif [[ ($1=="up" && $2=="-r") ]]
        then
                scp -r $3 dqu7337@quest.it.northwestern.edu:/projects/b1021/Dingwen/$4
        elif [[ ($1=="up" && $2!="-r" )]]
        then
                scp $3 dqu7337@quest.it.northwestern.edu:/projects/b1021/Dingwen/$4
        else
                echo wrong imput
        fi
}
#add aliases of nas
alias nas="sshpass -p ZXsmtdbq4011! ssh admin@24.12.193.22"
alias mount_nas='sshfs admin@24.12.193.22:/root /Users/doggy/nas_mount'
alias unmount_nas='umount -f /Users/doggy/nas_mount'

