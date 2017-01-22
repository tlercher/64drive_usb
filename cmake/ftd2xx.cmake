set (FTD2XX_FOLDER_NAME_LINUX "libftd2xx-x86_64-1.3.6")
set (FTD2XX_FOLDER_NAME_WINDOWS "CDM v2.12.24 WHQL Certified")

if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    set(FTD2XX_LIBFOLDER "${PROJECT_SOURCE_DIR}/libs/${FTD2XX_FOLDER_NAME_LINUX}/release")
    list(APPEND 64DRIVE_HEADERS "${FTD2XX_LIBFOLDER}/ftd2xx.h" "${FTD2XX_LIBFOLDER}/WinTypes.h")

    list(APPEND 64DRIVE_LINK_LIBS
            ${FTD2XX_LIBFOLDER}/build/libftd2xx.a
            dl
            rt
            pthread
            )
endif(${CMAKE_SYSTEM_NAME} MATCHES "Linux")

if(WIN32)
    set(FTD2XX_LIBFOLDER "${PROJECT_SOURCE_DIR}/libs/${FTD2XX_FOLDER_NAME_WINDOWS}")
    list(APPEND 64DRIVE_HEADERS "${FTD2XX_LIBFOLDER}/ftd2xx.h")

    list(APPEND 64DRIVE_LINK_LIBS
            ${FTD2XX_LIBFOLDER}/amd64/ftd2xx.lib
            )
endif(WIN32)

list(APPEND 64DRIVE_INCLUDE_DIRS "${FTD2XX_LIBFOLDER}")