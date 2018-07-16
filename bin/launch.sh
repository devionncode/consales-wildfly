#!/bin/sh

if [ "x$WILDFLY_HOME" = "x" ]; then
   WILDFLY_HOME=/opt/CONSALES
fi

if [ "x$1" = "xdomain" ]; then
   echo 'Starting Wildfly $WILDFLY_SERVICE_INSTANCE_NAME in domain mode.'
   $WILDFLY_HOME/bin/domain.sh -c $2 -b $3
   #>> /var/log/$WILDFLY_SERVICE/server-`date +%Y-%m-%d`.log
else
   echo 'Starting Wildfly $WILDFLY_SERVICE_INSTANCE_NAME in standalone mode.'
   $WILDFLY_HOME/bin/standalone.sh -c $2 -b $3
   #>> /var/log/$WILDFLY_SERVICE/server-`date +%Y-%m-%d`.log
fi
