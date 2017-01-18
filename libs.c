#include "libs.h"
#include "stdbool.h"
#define STM32F051
#include "stm32f0xx.h"

/** ============= SWITCHES ================= */
void libs_init_switches(void) {

	RCC->AHBENR |= (1 << 17);
	GPIOA->MODER &= (0xFFFFFF00);
	GPIOA->PUPDR |= (0x55);
}

uint8_t libs_read_switches(void) {

	uint8_t output = GPIOA->IDR;
	return output;
}

uint8_t libs_read_switches_bool(uint8_t value) {	// value is a number between 0-3
	// Returns true if the Switch is pressed
	uint8_t all_switches = libs_read_switches();
    all_switches &= 0b1111;

	if (value == 0) {

		return (all_switches == (0b1110));
	}

	if (value == 1) {

		return (all_switches == (0b1101));
	}

	if (value == 2) {

		return (all_switches == (0b1011));
	}

	if (value == 3) {

		return (all_switches == (0b0111));
	}

	return 0;
}

/** ============ LEDS ==================== */
void libs_init_leds(void) {

	RCC->AHBENR |= (1 << 18);
    GPIOB->MODER &= 0xFFFFFF00;
	GPIOB->MODER |= (0x5555);
}

void libs_write_leds(uint8_t input) {

	GPIOB->ODR = input;
}

/** ============ POTS ================== */

void libs_init_pot(void) {

	RCC->APB2ENR |= (0x200);
	GPIOA->MODER |= (0x3C00); 


    ADC1->CR |= (1 << 31);
    bool CAL = (bool)(ADC1->CR & (1 << 31));
    while(CAL) {
        CAL = (bool)(ADC1->CR & (1 << 31));
    }

	ADC1->CR |= (1);
	ADC1->CFGR1 &= (0xFFFFFFF0);
	ADC1->CFGR1 |= (0x10);
	while (!(ADC1->ISR)) {
		//Do nothing
		;
	}

}

//Infinite loop waiting for EOC flag
uint8_t libs_read_pot(uint8_t channel) {
    // channel = 0 ---> read POT0
	// channel = 1 ---> read POT1

    ADC1->CHSELR &= 0xFFFFFF9F;

	if (channel) {
		ADC1->CHSELR = (1 << 6);

	} else {
		ADC1->CHSELR = (1 << 5);
	}

    ADC1->CR |= (1 << 2);

    bool EOC_flag = (bool) (ADC1->ISR & 0b100);	// Value is 0 if conversion is note completed; otherwise 1

    while (!EOC_flag) {
        EOC_flag = (bool) (ADC1->ISR & 0b100);
    }

    uint32_t output = ADC1->DR;
    output &= 0x000000FF;	//8 bit resolution

    return (uint8_t) output;
}
