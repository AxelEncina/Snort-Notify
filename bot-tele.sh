#!/bin/bash

#init
initCount=0
logs= #//PATH --> example: /home/user/telegram/log-tele.txt

#File
msg_caption=/tmp/telegram_msg_caption.txt ##by default

#Chat ID and bot token from Telegram
chat_id=""
token=""

###
function sendAlert
{
        curl -s -F chat_id=$chat_id -F text="$caption" https://api.telegram.org/bot$token/sendMessage #> /dev/null 2&>1
}

#Monitoring Server
while true
do
    lastCount=$(wc -c $logs | awk '{print $1}') #getSizeFileLogs
    #DEBUG ONLY
    #echo before_last $lastCount #ex 100 #after reset 0
    #echo before_init $initCount #ex 0
    #echo "--------------------"

    if(($(($lastCount)) > $initCount));
       then
        #DEBUG
        #echo "Enviando Alerta..."
        msg=$(tail -n 2 $logs) #GetLastLineLog
        echo -e "Notificación de alerta generada por el IDS de Snort\n Mas detalles a continuación:!!!\n\nFecha y hora: $(date +"%d %b %Y %T")\n\n"$msg > $msg_caption #set Caption / Pesan
        caption=$(<$msg_caption) #set Caption
        sendAlert #
        echo "Alerta Enviada!"
        initCount=$lastCount
        rm -f $msg_caption
        sleep 1
    fi
    sleep 2 #delay if Not Indication
done
