TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ami1700
# ami1700.dbd will be created and installed
DBD += ami1700.dbd

# ami1700.dbd will be made up from these files:
ami1700_DBD += base.dbd

# Include dbd files from all support applications:
ami1700_DBD += caPutLog.dbd
ami1700_DBD += asyn.dbd
ami1700_DBD += stream.dbd
ami1700_DBD += drvAsynIPPort.dbd
ami1700_DBD += drvAsynSerialPort.dbd
ami1700_DBD += system.dbd
ami1700_DBD += asSupport.dbd
ami1700_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
ami1700_LIBS += caPutLog
ami1700_LIBS += stream
ami1700_LIBS += asyn
ami1700_LIBS += devIocStats
ami1700_LIBS += autosave

# ami1700_registerRecordDeviceDriver.cpp derives from ami1700.dbd
ami1700_SRCS += ami1700_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ami1700_SRCS_DEFAULT += ami1700Main.cpp
ami1700_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ami1700_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ami1700_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

