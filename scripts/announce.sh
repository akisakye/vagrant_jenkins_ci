#!/bin/bash

# To make sure that by the time script runs, Jenkins initialization is done
sleep 30

    echo "======================================================"
    echo " "
    echo " "
    echo " "
    echo "Your Jenkins server can be accessed at:"
    echo "http://$(hostname):8080"
    echo "You will likely have to add $(hostname) to your /etc/hosts file for this to work."
    echo " "
    echo "Alternatively, access can be through one of the addresses below at port 8080"
    echo "$(hostname -I)"
    echo " "
    echo " "
if [ ! -f /var/lib/jenkins/secrets/initialAdminPassword ]; then
    echo "Your Jenkins is already setup!"
else
    echo "Your default password for Jenkins is:"
    echo "$(cat /var/lib/jenkins/secrets/initialAdminPassword)"
    echo "Please change it IMMEDIATELY"
fi
    echo " "
    echo " "
    echo " "
    echo "======================================================"
