#!../../bin/linux-x86_64/ami1700

## You may have to change ami1700 to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("$(TOP)/dbd/ami1700.dbd",0,0)
ami1700_registerRecordDeviceDriver(pdbbase) 

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST" , "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST" ,      "10.23.0.255")
epicsEnvSet("STREAM_PROTOCOL_PATH"    , "$(TOP)/protocols")

drvAsynIPPortConfigure("AMI1", "10.23.3.64:7180")
asynSetTraceMask("AMI1", 0, 0x9)
asynSetTraceIOMask("AMI1", 0, 0x2)

## Load record instances
dbLoadRecords("$(TOP)/db/ami1700.db","Sys=XF:23ID1-ES,Dev={HeMeter},PORT=AMI1")

iocInit()

