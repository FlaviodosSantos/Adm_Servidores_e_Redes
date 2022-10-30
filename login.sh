#!/bin/bash

# Escreva um script que solicite do usuario um login, 
# e exiba na tela se este login eh
# um usuario valido no sistema.
# Comandos uteis: read, cat, grep.

echo -n "digite seu login: "
read login


user=($(cat /etc/passwd | cut -d: -f 1 | sort | grep $login$))

if [ $login = $user ]
then
	echo "Usario Valido"
else
	echo "Usario não cadastrado"
fi 
