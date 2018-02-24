#!/bin/bash

if [ -z "${USER}" ]
then
echo "Supervisor user is default (docker)"
else
sed -i "s/docker/${USER}/g" /etc/supervisord.conf
fi


if [ -z "${PASSWORD}" ]
then
echo "Supervisor password is default (passdocker)"
else
sed -i "s/root/${PASSWORD}/g" /etc/supervisord.conf
fi
