#!/bin/bash

postfix_file="/home/robson-cruz/postfix-main.cf_"

read -p "Informe o email para enviar o arquivo: " email

if [ -e "$postfix_file" ]; then
    echo "main.cf postfix file configuration"
else
    touch "$postfix_file"
    cat /etc/postfix/main.cf > "$postfix_file" 
fi


echo "main.cf postfx file configuration" | mail -s "main.cf postfix file" -A "$postfix_file" "$email"
