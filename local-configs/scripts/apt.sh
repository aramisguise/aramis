#!/bin/bash

clear

LOG_FILE="/tmp/apt.log"

#APT_CMD="apt"
APT_CMD="apt-get"

echo -e "\n" > ${LOG_FILE}
echo " =====> START ${APT_CMD} :: `date +%Y-%m-%d_%T`" >> ${LOG_FILE}

echo -e "\n" >> ${LOG_FILE}
echo " =====> START ${APT_CMD} update :: `date +%Y-%m-%d_%T`" >> ${LOG_FILE}
${APT_CMD} -y autoremove >> ${LOG_FILE}
${APT_CMD} update >> ${LOG_FILE}


echo -e "\n" >> ${LOG_FILE}
if [ ${APT_CMD} == "apt" ]; then
  echo " =====> START ${APT_CMD} upgrade :: `date +%Y-%m-%d_%T`" >> ${LOG_FILE}
  ${APT_CMD} -y upgrade >> ${LOG_FILE}
  echo -e "\n" >> ${LOG_FILE}
  echo " =====> START ${APT_CMD} full-upgrade :: `date +%Y-%m-%d_%T`" >> ${LOG_FILE}
  ${APT_CMD} -y full-upgrade >> ${LOG_FILE}
elif [ ${APT_CMD} == "apt-get" ]; then
  echo " =====> START ${APT_CMD} dist-upgrade :: `date +%Y-%m-%d_%T`" >> ${LOG_FILE}
  ${APT_CMD} -y dist-upgrade >> ${LOG_FILE}
else
  :
fi

echo -e "\n" >> ${LOG_FILE}
echo " =====> END ${APT_CMD} :: `date +%Y-%m-%d_%T`" >> ${LOG_FILE}

echo -e "\n" >> ${LOG_FILE}

echo -e "\n"
echo "Review ${APT_CMD} log file in ${LOG_FILE}"


echo -e "\n\n"



