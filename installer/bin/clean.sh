#!/bin/bash
# T-Pot Container Data Cleaner

# Set persistence
myPERSISTENCE=$1

# Check persistence
if [ "$myPERSISTENCE" = "on" ];
  then
    echo "### Persistence enabled, nothing to do."
    exit
fi

# Let's create a function to clean up and prepare conpot data
fuCONPOT () {
  rm -rf /data/conpot/*
  mkdir -p /data/conpot/log
  chmod 760 /data/conpot -R
  chown tpot:tpot /data/conpot -R
}

# Let's create a function to clean up and prepare cowrie data
fuCOWRIE () {
  rm -rf /data/cowrie/*
  mkdir -p /data/cowrie/log/tty/ /data/cowrie/downloads/ /data/cowrie/keys/ /data/cowrie/misc/
  chmod 760 /data/cowrie -R
  chown tpot:tpot /data/cowrie -R
}

# Let's create a function to clean up and prepare dionaea data
fuDIONAEA () {
  rm -rf /data/dionaea/*
  mkdir -p /data/dionaea/log /data/dionaea/bistreams /data/dionaea/binaries /data/dionaea/rtp /data/dionaea/roots/ftp /data/dionaea/roots/tftp /data/dionaea/roots/www /data/dionaea/roots/upnp
  chmod 760 /data/dionaea -R
  chown tpot:tpot /data/dionaea -R
}

# Let's create a function to clean up and prepare elasticpot data
fuELASTICPOT () {
  rm -rf /data/elasticpot/*
  mkdir -p /data/elasticpot/log
  chmod 760 /data/elasticpot -R
  chown tpot:tpot /data/elasticpot -R
}

# Let's create a function to clean up and prepare elk data
fuELK () {
  # ELK data will be kept for <= 90 days, check /etc/crontab for curator modification
  # ELK daemon log files will be removed
  rm -rf /data/elk/log/*
  mkdir -p /data/elk 
  chmod 760 /data/elk -R
  chown tpot:tpot /data/elk -R
}

# Let's create a function to clean up and prepare emobility data
fuEMOBILITY () {
  rm -rf /data/emobility/*
  rm /data/ews/emobility/ews.json
  mkdir -p /data/emobility/log /data/ews/emobility
  chmod 760 /data/emobility -R
  chown tpot:tpot /data/emobility -R
}

# Let's create a function to clean up and prepare glastopf data
fuGLASTOPF () {
  rm -rf /data/glastopf/*
  mkdir -p /data/glastopf
  chmod 760 /data/glastopf -R
  chown tpot:tpot /data/glastopf -R
}

# Let's create a function to clean up and prepare honeytrap data
fuHONEYTRAP () {
  rm -rf /data/honeytrap/*
  mkdir -p /data/honeytrap/log/ /data/honeytrap/attacks/ /data/honeytrap/downloads/
  chmod 760 /data/honeytrap/ -R
  chown tpot:tpot /data/honeytrap/ -R
}

# Let's create a function to clean up and prepare mailoney data
fuMAILONEY () {
  rm -rf /data/mailoney/*
  mkdir -p /data/mailoney/log/
  chmod 760 /data/mailoney/ -R
  chown tpot:tpot /data/mailoney/ -R
}

# Let's create a function to clean up and prepare maltrail data
fuMALTRAIL () {
  rm -rf /data/maltrail/*
  mkdir -p /data/maltrail/log/
  chmod 760 /data/maltrail/ -R
  chown tpot:tpot /data/maltrail/ -R
}

# Let's create a function to prepare spiderfoot db
fuSPIDERFOOT () {
  mkdir -p /data/spiderfoot
  touch /data/spiderfoot/spiderfoot.db
  chmod 760 -R /data/spiderfoot
  chown tpot:tpot -R /data/spiderfoot
}

# Let's create a function to clean up and prepare suricata data
fuSURICATA () {
  rm -rf /data/suricata/*
  mkdir -p /data/suricata/log
  chmod 760 -R /data/suricata
  chown tpot:tpot -R /data/suricata
}

# Let's create a function to clean up and prepare p0f data
fuP0F () {
  rm -rf /data/p0f/*
  mkdir -p /data/p0f/log
  chmod 760 -R /data/p0f
  chown tpot:tpot -R /data/p0f
}

fuCONPOT
fuCOWRIE
fuDIONAEA
fuELASTICPOT
fuELK
fuEMOBILITY
fuGLASTOPF
fuHONEYTRAP
fuMAILONEY
fuMALTRAIL
fuSPIDERFOOT
fuSURICATA
fuP0F
