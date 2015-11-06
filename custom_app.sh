#!/bin/bash


apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Keyguard" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'   

elif [ "$apkBaseName" = "SystemUI" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'

elif [ "$apkBaseName" = "TelephonyProvider" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "getAllMessagesFromIcc" with "getAllMessagesFromIccExtended""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIcc()Ljava\/util\/ArrayList#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIccExtended()Ljava\/util\/ArrayList#g'

fi
