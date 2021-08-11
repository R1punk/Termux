#!/bin/bash
counter=0
(
while :
do
cat <<EOF
XXX
$counter
Process( $counter%):
XXX
EOF
(( counter+=10 ))
[ $counter -eq 100 ] && break
sleep 1
done
) |
dialog --title "Ripunk" --gauge "Please Wait" 7 70 0
DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0

display_result() {
  dialog --title "$1" \
  --no-collapse \
  --msgbox "$result" 0 0
}

key="extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]"

DIR="/data/data/com.termux/files/home/.termux"
rm -r $DIR > /dev/null 2>&1
mkdir $DIR > /dev/null 2>&1

echo "$key " > $DIR/termux.properties
echo "Terimkasih sudah menggunakan tools kami.\
jangan lupa dukung channel kami dengan SUBCRIBE LIKE COMMENT DAN SHARE 
dan jangan lupa nyalakan LONCENG nya supaya tidak ketinggalan vidio baru .
TERIMAKASIH SUDAH MENONTON" >Ripunk.txt
termux-reload-settings
result=$(cat Ripunk.txt)
display_result "SUBCRIBE CHANNEL"
clear
rm Ripunk.txt
exit
