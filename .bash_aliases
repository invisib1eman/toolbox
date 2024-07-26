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

#some quest aliases
alias main="cd /projects/b1021/Dingwen"
alias gel="cd /projects/b1021/Dingwen/Polyelectrolyte_gel/Gel"
alias bashrc="vi /home/dqu7337/.bashrc"
alias task="squeue -u dqu7337"
alias b1021="bash /projects/b1021/quest_tools/checkqueue.sh b1021"
alias b1164="bash /projects/b1021/quest_tools/checkqueue.sh b1164"
alias inter="ln -s /projects/b1021 ~/b1021"

