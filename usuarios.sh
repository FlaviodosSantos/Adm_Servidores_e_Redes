#!/bin/bash

# Escreva um script (shell bash) que exiba na tela quais sao os 
# usuarios cadastrados em seu sistema, ordenados por ordem alfabetica.
# Comandos uteis: cat, cut, sort.

cat /etc/passwd | cut -d: -f 1 | sort
