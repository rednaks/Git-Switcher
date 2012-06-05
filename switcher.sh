#!/bin/bash

if [ -z $1 ] 
then
    echo "Vous devez entrer le Username de votre compte github en argument"
else

    if [ -d ~/.sshAc/$1 ] 
    then
        echo "Remplacement ..."
        cp ~/.sshAc/$1/ssh-keys/id_* ~/.ssh/
		cp ~/.sshAc/$1/.gitconfig ~/.gitconfig
        echo "Vous pouvez maintenant vous connecter en tant que $1"
    else
        echo "Aucun compte n'est enregisté avec ce Username"
    fi
fi
