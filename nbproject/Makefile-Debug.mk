#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/EyesControl.o \
	${OBJECTDIR}/src/InputControl.o \
	${OBJECTDIR}/src/Settings.o \
	${OBJECTDIR}/src/main.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f3 \
	${TESTDIR}/TestFiles/f2 \
	${TESTDIR}/TestFiles/f1

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/tests/EyesControlTest.o \
	${TESTDIR}/tests/InputControlTest.o \
	${TESTDIR}/tests/SettingsTest.o \
	${TESTDIR}/tests/newtestrunner.o \
	${TESTDIR}/tests/newtestrunner1.o \
	${TESTDIR}/tests/newtestrunner2.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-fprofile-arcs -ftest-coverage
CXXFLAGS=-fprofile-arcs -ftest-coverage

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=`pkg-config --libs opencv`  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/eyecontrol-1.3

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/eyecontrol-1.3: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/eyecontrol-1.3 ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/src/EyesControl.o: src/EyesControl.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/EyesControl.o src/EyesControl.cpp

${OBJECTDIR}/src/InputControl.o: src/InputControl.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/InputControl.o src/InputControl.cpp

${OBJECTDIR}/src/Settings.o: src/Settings.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Settings.o src/Settings.cpp

${OBJECTDIR}/src/main.o: src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:

${TESTDIR}/TestFiles/f3: ${TESTDIR}/tests/EyesControlTest.o ${TESTDIR}/tests/newtestrunner2.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} -o ${TESTDIR}/TestFiles/f3 $^ ${LDLIBSOPTIONS}   `cppunit-config --libs`   

${TESTDIR}/TestFiles/f2: ${TESTDIR}/tests/InputControlTest.o ${TESTDIR}/tests/newtestrunner1.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} -o ${TESTDIR}/TestFiles/f2 $^ ${LDLIBSOPTIONS}   `cppunit-config --libs`   

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/SettingsTest.o ${TESTDIR}/tests/newtestrunner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS}   `cppunit-config --libs`   


${TESTDIR}/tests/EyesControlTest.o: tests/EyesControlTest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/EyesControlTest.o tests/EyesControlTest.cpp


${TESTDIR}/tests/newtestrunner2.o: tests/newtestrunner2.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/newtestrunner2.o tests/newtestrunner2.cpp


${TESTDIR}/tests/InputControlTest.o: tests/InputControlTest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/InputControlTest.o tests/InputControlTest.cpp


${TESTDIR}/tests/newtestrunner1.o: tests/newtestrunner1.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/newtestrunner1.o tests/newtestrunner1.cpp


${TESTDIR}/tests/SettingsTest.o: tests/SettingsTest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/SettingsTest.o tests/SettingsTest.cpp


${TESTDIR}/tests/newtestrunner.o: tests/newtestrunner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/newtestrunner.o tests/newtestrunner.cpp


${OBJECTDIR}/src/EyesControl_nomain.o: ${OBJECTDIR}/src/EyesControl.o src/EyesControl.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/EyesControl.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/EyesControl_nomain.o src/EyesControl.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/EyesControl.o ${OBJECTDIR}/src/EyesControl_nomain.o;\
	fi

${OBJECTDIR}/src/InputControl_nomain.o: ${OBJECTDIR}/src/InputControl.o src/InputControl.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/InputControl.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/InputControl_nomain.o src/InputControl.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/InputControl.o ${OBJECTDIR}/src/InputControl_nomain.o;\
	fi

${OBJECTDIR}/src/Settings_nomain.o: ${OBJECTDIR}/src/Settings.o src/Settings.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/Settings.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Settings_nomain.o src/Settings.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/Settings.o ${OBJECTDIR}/src/Settings_nomain.o;\
	fi

${OBJECTDIR}/src/main_nomain.o: ${OBJECTDIR}/src/main.o src/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g `pkg-config --cflags opencv` -std=c++14  -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main_nomain.o src/main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/main_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f3 || true; \
	    ${TESTDIR}/TestFiles/f2 || true; \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
