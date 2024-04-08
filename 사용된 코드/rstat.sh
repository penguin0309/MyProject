#!/bin/bash

VAS_name="./launcher gRpcRtgw"
RDS_name="rds.jar"
SNA_name="sna.jar"
RPS_name="rps.jar"
#AMP_name="master-smp-service.jar"
#SMP_name="stt-smp-service.jar"

VAS=`ps -ef |grep "${VAS_name}" | grep -v 'grep' | awk '{print $2}'`
RDS=`ps -ef |grep ${RDS_name} | grep -v 'grep' | awk '{print $2}'`
SNA=`ps -ef |grep ${SNA_name} | grep -v 'grep' | awk '{print $2}'`
RPS=`ps -ef |grep ${RPS_name} | grep -v 'grep' | awk '{print $2}'`
#AMP=`ps -ef |grep ${AMP_name} | grep -v 'grep' | awk '{print $2}'`
#SMP=`ps -ef |grep ${SMP_name} | grep -v 'grep' | awk '{print $2}'`

PID_VAS=`ps -ef |grep "${VAS_name}" | grep -vE 'grep' | awk '{ print $2 }'`
PID_RDS=`ps -ef |grep ${RDS_name} | grep -vE 'grep' | awk '{print $2}'`
PID_SNA=`ps -ef |grep ${SNA_name} | grep -vE 'grep' | awk '{print $2}'`
PID_RPS=`ps -ef |grep ${RPS_name} | grep -vE 'grep' | awk '{print $2}'`
#PID_AMP=`ps -ef |grep ${AMP_name} | grep -v 'grep' | awk '{print $2}'`
#PID_SMP=`ps -ef |grep ${SMP_name} | grep -v 'grep' | awk '{print $2}'`

echo `clear`
echo "========================================================"
echo "                   RT status check"
echo "========================================================"
echo " NAME                     PID                   status  "
echo "========================================================"
echo " "

while true
do

    if [ "${VAS}" != "" ]
    then
        echo -e "\e[32m gRpcRtgw               ${PID_VAS}                  Running\e[0m"
        echo " "
        echo "========================================================"
    else
        echo -e "\e[91m gRpcRtgw                NONE                     NONE\e[0m"
        echo " "
        echo "========================================================"
    fi

    if [ "${RDS}" != "" ]
    then
        echo " "
        echo -e "\e[32m RDS                    ${PID_RDS}                  Running\e[0m"
        echo " "
        echo "========================================================"
    else
        echo " "
        echo -e "\e[91m RDS                     NONE                     NONE\e[0m"
        echo " "
        echo "========================================================"
    fi

    if [ "${SNA}" != "" ]
    then
        echo " "
        echo -e "\e[32m SNA                    ${PID_SNA}                  Running\e[0m"
        echo " "
        echo "========================================================"
    else
        echo " "
        echo -e "\e[91m SNA                     NONE                     NONE\e[0m"
        echo " "
        echo "========================================================"
    fi

    if [ "${RPS}" != "" ]
    then
        echo " "
        echo -e "\e[32m RPS                    ${PID_RPS}                  Running\e[0m"
        echo " "
        echo "========================================================"
    else
        echo " "
        echo -e "\e[91m RPS                     NONE                     NONE\e[0m"
        echo " "
        echo "========================================================"
    fi

    #if [ "${AMP}" != "" ]
    #then
    #    echo " "
    #    echo -e "\e[32m AMP                    ${PID_AMP}                  Running\e[0m"
    #    echo " "
    #    echo "========================================================"
    #else
    #    echo " "
    #    echo -e "\e[91m AMP                     NONE                     NONE\e[0m"
    #    echo " "
    #    echo "========================================================"
    #fi

    #if [ "${SMP}" != "" ]
    #then
    #    echo " "
    #    echo -e "\e[32m SMP                    ${PID_SMP}                  Running\e[0m"
    #    echo " "
    #    echo "========================================================"
    #else
    #    echo " "
    #    echo -e "\e[91m SMP                     NONE                     NONE\e[0m"
    #    echo " "
    #    echo "========================================================"
    #fi

    break
done