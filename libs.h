#ifndef __LIBS_H_
#define __LIBS_H_

#include <stdint.h>

//Prototypes
/** ============= SWITCHES ================= */
void libs_init_switches(void);

uint8_t libs_read_switches(void);

uint8_t libs_read_switches_bool(uint8_t value);
// Returns 1 if only SW(value) is pressed, 0 otherwise
/** ============ LEDS ==================== */
void libs_init_leds(void);

void libs_write_leds(uint8_t value);


/** ============ POTS ================== */
void libs_init_pot(void);

uint8_t libs_read_pot(uint8_t channel);

#endif
