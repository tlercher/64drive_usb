#include <stdint.h>
#include "WinTypes.h"

typedef int64_t LONGLONG;

typedef char TCHAR;

typedef union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG  HighPart;
    };
    struct {
        DWORD LowPart;
        LONG  HighPart;
    } u;
    LONGLONG QuadPart;
} LARGE_INTEGER, *PLARGE_INTEGER;

#define TEXT(x) x