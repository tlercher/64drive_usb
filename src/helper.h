//
// helper.h
//

#ifndef INC_64DRIVE_HELPER_H

#define INC_64DRIVE_HELPER_H

#include "local.h"
#include "ftd2xx.h"

// prototypes
//
extern u32 swap_endian(u32 val);
extern void _printf(const char *format, ...);
extern void prog_draw(u32 amount, u32 total);
extern void prog_erase();

extern void fail(FT_STATUS st);
extern void die(char *cause, char *msg);

// globals
//
extern char	*compile_date;

#endif // INC_64DRIVE_HELPER_H