#!/bin/bash

# cat /proc/loadavg | awk '{print $1}'

lerCarga=$(cat /proc/loadavg | awk -F. '{print $1}')

if [ "${lerCarga}" -ge "20" ];
then
    	echo "reiniciado por carga alta"
else
    	echo "ta suave"
fi
