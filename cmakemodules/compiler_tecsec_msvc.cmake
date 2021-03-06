#	Copyright (c) 2015, TecSec, Inc.
#
#	Redistribution and use in source and binary forms, with or without
#	modification, are permitted provided that the following conditions are met:
#	
#		* Redistributions of source code must retain the above copyright
#		  notice, this list of conditions and the following disclaimer.
#		* Redistributions in binary form must reproduce the above copyright
#		  notice, this list of conditions and the following disclaimer in the
#		  documentation and/or other materials provided with the distribution.
#		* Neither the name of TecSec nor the names of the contributors may be
#		  used to endorse or promote products derived from this software 
#		  without specific prior written permission.
#		 
#	ALTERNATIVELY, provided that this notice is retained in full, this product
#	may be distributed under the terms of the GNU General Public License (GPL),
#	in which case the provisions of the GPL apply INSTEAD OF those given above.
#		 
#	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
#	ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
#	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
#	DISCLAIMED.  IN NO EVENT SHALL TECSEC BE LIABLE FOR ANY 
#	DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
#	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
#	LOSS OF USE, DATA OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
#	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

add_definitions(-DWINDOWS)
add_definitions(-DXP_WIN)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Zi -nologo -Gm- -Gd -fp:precise -Zc:wchar_t -Zc:forScope -Zm300 -EHa -bigobj ")
set(CMAKE_C_FLAGS_DEBUG         "${CMAKE_C_FLAGS_DEBUG} -MDd -RTC1 -Od -GS -D_DEBUG")
set(CMAKE_C_FLAGS_RELEASE       "${CMAKE_C_FLAGS_RELEASE} -MD -Ox -Oi -Ot -GL -GS- -Gy -D_RELEASE")
set(CMAKE_C_FLAGS_RELWITHDEBINFO "${CMAKE_C_FLAGS_RELWITHDEBINFO} -MD -Ox -Oi -Ot -GL -GS- -Gy -D_RELEASE")
set(CMAKE_C_FLAGS_DEBUGSTATIC   "${CMAKE_C_FLAGS_DEBUGSTATIC} -MTd -RTC1 -Od -GS -D_DEBUG -D_STATIC_MSVCRT -D_STATIC_TSFRAMEWORK")
set(CMAKE_C_FLAGS_RELEASESTATIC "${CMAKE_C_FLAGS_RELEASESTATIC} -MT -Ox -Oi -Ot -GL -GS- -Gy -D_RELEASE -D_STATIC_MSVCRT -D_STATIC_TSFRAMEWORK")

if(MSVC)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -MP8")
endif()

# #IF(MSVC_IDE)
# #set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -W4 /Yu\"StdAfx.h\"")
# #ELSE()
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS}")
# set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -W4")
# #ENDIF()
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG}")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_C_FLAGS_RELWITHDEBINFO}")
set(CMAKE_CXX_FLAGS_DEBUGSTATIC "${CMAKE_C_FLAGS_DEBUGSTATIC}")
set(CMAKE_CXX_FLAGS_RELEASESTATIC "${CMAKE_C_FLAGS_RELEASESTATIC}")

set(CMAKE_EXE_LINKER_FLAGS "/ALLOWISOLATION ")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS} /INCREMENTAL:NO /LTCG /MACHINE:${TS_X_PLATFORM} /RELEASE")
set(CMAKE_EXE_LINKER_FLAGS_RELWITHDEBINFO "${CMAKE_EXE_LINKER_FLAGS} /INCREMENTAL:NO /LTCG /MACHINE:${TS_X_PLATFORM} /DEBUG")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG "${CMAKE_EXE_LINKER_FLAGS} /INCREMENTAL:NO /MACHINE:${TS_X_PLATFORM} /DEBUG")
set(CMAKE_EXE_LINKER_FLAGS_RELEASESTATIC "${CMAKE_EXE_LINKER_FLAGS} /INCREMENTAL:NO /LTCG /MACHINE:${TS_X_PLATFORM} /RELEASE")
set(CMAKE_EXE_LINKER_FLAGS_DEBUGSTATIC "${CMAKE_EXE_LINKER_FLAGS} /INCREMENTAL:NO /MACHINE:${TS_X_PLATFORM} /DEBUG")

set(CMAKE_SHARED_LINKER_FLAGS_RELEASESTATIC "${CMAKE_SHARED_LINKER_FLAGS_RELEASE}")
set(CMAKE_SHARED_LINKER_FLAGS_DEBUGSTATIC "${CMAKE_SHARED_LINKER_FLAGS_DEBUG}")



set(CMAKE_MANAGED_CPP_V40_FLAGS "-Zi -nologo -W4 -EHa -fp:precise -Zc:wchar_t -Zc:forScope /clr /FU\"C:/Program Files (x86)/Reference Assemblies/Microsoft/Framework/.NETFramework/v4.0/Profile/Client/System.Data.dll\" /FU\"C:/Program Files (x86)/Reference Assemblies/Microsoft/Framework/.NETFramework/v4.0/Profile/Client/System.dll\" /FU\"C:/Program Files (x86)/Reference Assemblies/Microsoft/Framework/.NETFramework/v4.0/Profile/Client/System.Xml.dll\" ")
set(CMAKE_MANAGED_CPP_V40_FLAGS_RELEASE "/O2 /Oi /GL /MD /GS /Gy -D_RELEASE")
set(CMAKE_MANAGED_CPP_V40_FLAGS_DEBUG "/Od /MDd /GS -D_DEBUG")

set(CMAKE_MANAGED_EXE_LINKER_FLAGS "/NOLOGO /ALLOWISOLATION /KEYFILE:\"${MANAGED_KEYFILE}\" /DELAYSIGN /NXCOMPAT /DYNAMICBASE /FIXED:NO /TLBID:1")
set(CMAKE_MANAGED_EXE_LINKER_FLAGS_RELEASE "/LTCG /MANIFEST /UACExecutionLevel:\"level='asInvoker'\" /UACUIAccess:\"uiAccess='false'\"")
set(CMAKE_MANAGED_EXE_LINKER_FLAGS_DEBUG "/DEBUG /NXCOMPAT /MANIFEST /UACExecutionLevel:\"level='asInvoker'\" /UACUIAccess:\"uiAccess='false'\" /ALLOWISOLATION:NO")


set(CMAKE_MANAGED_SHARED_LINKER_FLAGS "/NOLOGO /KEYFILE:\"${MANAGED_KEYFILE}\" /NXCOMPAT /DYNAMICBASE /FIXED:NO /TLBID:1 /LinkKeyFile:\"${MANAGED_KEYFILE}\"")
set(CMAKE_MANAGED_SHARED_LINKER_FLAGS_RELEASE "/MANIFEST /UACExecutionLevel:\"level='asInvoker'\" /UACUIAccess:\"uiAccess='false'\"")
set(CMAKE_MANAGED_SHARED_LINKER_FLAGS_DEBUG "/DEBUG /NXCOMPAT /MANIFEST /UACExecutionLevel:\"level='asInvoker'\" /UACUIAccess:\"uiAccess='false'\" /ASSEMBLYDEBUG")

 #/ManifestFile:"S:\devsup\Crypto_Unicode\obj\TecSec.Crypto.Loader\x64\Release\TecSec.Crypto.Loader.dll.intermediate.manifest" 

set(CMAKE_MANAGED_CPP_V45_FLAGS "-Zi -nologo -W4 -EHa -fp:precise -Zc:wchar_t -Zc:forScope /clr /FU\"C:/Program Files (x86)/Reference Assemblies/Microsoft/Framework/.NETFramework/v4.5/System.Data.dll\" /FU\"C:/Program Files (x86)/Reference Assemblies/Microsoft/Framework/.NETFramework/v4.5/System.dll\" /FU\"C:/Program Files (x86)/Reference Assemblies/Microsoft/Framework/.NETFramework/v4.5/System.Xml.dll\" ")
set(CMAKE_MANAGED_CPP_V45_FLAGS_RELEASE "/O2 /Oi /GL /MD /GS /Gy -D_RELEASE")
set(CMAKE_MANAGED_CPP_V45_FLAGS_DEBUG "/Od /MDd /GS")

 #if (CMAKE_BUILD_TYPE STREQUAL "Debug")
#	SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /NODEFAULTLIB:msvcrt.lib ")
#	SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /NODEFAULTLIB:msvcrt.lib ")
#endif() # (CMAKE_BUILD_TYPE STREQUAL "Debug")

if (MACHINETYPE STREQUAL "x86")
	set(VS_ANALYZE CACHE BOOL "Compile with /analyze. Available only on Windows with VS 2010 Premium and for 32-bit builds.")
	if (VS_ANALYZE)
		add_definitions(-DCODE_ANALYSIS -analyze)
	endif()
endif()

set(SG_OS_LIBS rpcrt4.lib winmm.lib advapi32.lib wininet.lib shlwapi.lib)

# set(COMPILE_DEFINITIONS_RELEASE "${COMPILE_DEFINITIONS_RELEASE};_RELEASE")
# STRING(REPLACE "_RELEASE" "" COMPILE_DEFINITIONS_RELEASESTATIC ${COMPILE_DEFINITIONS_RELEASE})
# set(COMPILE_DEFINITIONS_RELEASESTATIC "${COMPILE_DEFINITIONS_RELEASESTATIC};_RELEASESTATIC")
# set(COMPILE_DEFINITIONS_DEBUGSTATIC "${COMPILE_DEFINITIONS_DEBUG};_DEBUGSTATIC")
# STRING(REPLACE "_RELEASE" "" COMPILE_DEFINITIONS_RELEASENONSXS ${COMPILE_DEFINITIONS_RELEASE})
# set(COMPILE_DEFINITIONS_RELEASENONSXS "${COMPILE_DEFINITIONS_RELEASENONSXS};_RELEASENONSXS")



