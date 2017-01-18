// NJRMIC002 KRXAMI001
// Prac7

#include <stdint.h>
#define STM32F051
#include "stm32f0xx.h"  // you can remove this if you're not using it
#include "libs.h"

// change this function prototype to take appropriate arguments.
void find_best_pair(uint8_t **smallest_ptr_ptr, uint8_t **largest_ptr_ptr, uint8_t *patterns0, uint8_t *patterns1);
void sort(int32_t *arr, uint32_t len);

// DO NOT CHANGE THESE ARRAYS. The marker will change the values *AND LENGTH* at compile time.
uint8_t patterns0[] = {0x7b, 0x18, 0x3f, 0x21, 0x02, 0x70, 0x06, 0x0c, 0x2, 0x31, 0x4d, 0x73};
uint8_t patterns1[] = {0x3, 0x01, 0x02, 0x05, 0x0A, 0x15, 0x2A, 0x55};
int32_t outOfOrder[] = {0x26d, 0x309, 0xc73, 0xc42, 0xe1f, 0x235, 0x166, 0x2ef, 0xcf5};

uint16_t len_arr0 = sizeof(patterns0)/sizeof(patterns0[0]);
uint16_t len_arr1 = sizeof(patterns1)/sizeof(patterns0[1]);

int main(void) {

    // Allocate two pointers. These pointers should be set to point to the largest
    // and smallest element in either array.
    // At marking time, it is possible that the smallest element is in pattens0 and
    // the largest in patterns1 (or vice versa). It is also possible that the smallest
    // and largest elements are in one array.
    uint8_t *largest_of_the_two_ptr;
    uint8_t *smallest_of_the_two_ptr;

    //Implement as needed

    find_best_pair(&smallest_of_the_two_ptr, &largest_of_the_two_ptr, patterns0, patterns1);

    //Implement Part 2 before entering the while loop.
    sort(outOfOrder, (sizeof(outOfOrder)/sizeof(outOfOrder[0])));

    // All other initialisations
    libs_init_leds();
    libs_init_switches();
    libs_init_pot();

    uint8_t prev_0, prev_1 = 0; // Previous state of LEDS for Q3
    uint16_t idx_0, idx_1 = 0; //Index of current element in patterns0/patterns1
    while(1) {

        if( libs_read_switches_bool(2) ) {
            uint8_t pot = libs_read_pot(0);
            uint8_t val = 0xFF - pot;
            libs_write_leds(val);
        }
   
        uint8_t curr_0 = libs_read_switches_bool(0);
        uint8_t curr_1 = libs_read_switches_bool(1);

        uint16_t index = 0;

        //SW0
        if (curr_0 == 1 && prev_0 == 0){

            if (idx_0 < len_arr0) {

                libs_write_leds(patterns0[idx_0]);
                idx_0++;

            } else {

                idx_0 = 0;
            }
        }

        //SW1
        if (curr_1 == 1 && prev_1 == 0){

            if (idx_1 < len_arr1) {

                libs_write_leds(patterns1[idx_1]);
                idx_1++;

            } else {

                idx_1 = 0;
            }
        }

        //Debouncing
        while (index < 12000) {
            index++;
        }

        prev_0 = curr_0;
        prev_1 = curr_1;
    }
    return 0;  // keep compiler happy with a return code.

}

// Change arguments as required, but don't change return type!
void find_best_pair(uint8_t **smallest_ptr_ptr, uint8_t **largest_ptr_ptr, uint8_t *patterns0, uint8_t *patterns1) {
    *smallest_ptr_ptr = &(patterns0[0]);
    *largest_ptr_ptr = &(patterns0[0]);

    for (uint16_t i = 0; i < (len_arr0 - 1); i++) {
        if (patterns0[i] < **smallest_ptr_ptr) {
            *smallest_ptr_ptr = &(patterns0[i]);
        }
        if (patterns0[i] > **largest_ptr_ptr ) {
            *largest_ptr_ptr = &(patterns0[i]);
        }
    }

    for (uint16_t i = 0; i < (len_arr1 - 1); i++) {
        if (patterns1[i] < **smallest_ptr_ptr) {
            *smallest_ptr_ptr = &(patterns1[i]);
        }
        if (patterns1[i] > **largest_ptr_ptr ) {
            *largest_ptr_ptr = &(patterns1[i]);
        }
    }
}

void sort(int32_t *arr, uint32_t len){
    int32_t current_smallest = arr[0];

    for (uint32_t i = 0; i < len; i++) {

        for (uint32_t j = 0; j < len; j++) {

            if (arr[j] > arr[i]){

                current_smallest = arr[j];
                arr[j] = arr[i];
                arr[i] = current_smallest;
            }
        }
    }
}
