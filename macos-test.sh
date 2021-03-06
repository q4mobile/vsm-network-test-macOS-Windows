#!/bin/bash
#This script tests the whether your MAC can connect to the Q4 VSM Platform
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
#Testing TCP ports 
echo "######## Q4inc VSM Test for macOS ########"
echo "### All lines below should be in green ###"
nc -vz hlg.tokbox.com 443 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to tokbox succesful!${NC}"
else 
  echo -e "${RED}TCP connection to tokbox failed!${NC}"
fi
nc -vz api.events.q4inc.com 443 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to events.q4inc.com succesful!${NC}"
else 
  echo -e "${RED}TCP connection to events.q4inc.com failed!${NC}"
fi
nc -vz api.twilio.com 443 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to twilio succesful!${NC}"
else 
  echo -e "${RED}TCP connection to twilio failed!${NC}"
fi
nc -vz stats-eu-west-1.callstats.io 443 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to callstats succesful!${NC}"
else 
  echo -e "${RED}TCP connection to callstats failed!${NC}"
fi
nc -vz data.pendo.io 443 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to pendo.io succesful!${NC}"
else 
  echo -e "${RED}TCP connection to pendo.io failed!${NC}"
fi
nc -vz app.launchdarkly.com 443 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to launchdarkly succesful!${NC}"
else 
  echo -e "${RED}TCP connection to launchdarkly failed!${NC}"
fi
nc -vz o485366.ingest.sentry.io 443 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}TCP connection to sentry.io succesful!${NC}"
else 
  echo -e "${RED}TCP connection to snetry.io failed!${NC}"
fi

#Testing UDP ports

nc -vzu hlg.tokbox.com 3478 &>/dev/null
if [ $? = 0 ]
then
  echo -e "${GREEN}UDP connection to opentok succesful!${NC}"
else 
  echo -e "${RED}UDP connection to opentok failed!${NC}"
fi






