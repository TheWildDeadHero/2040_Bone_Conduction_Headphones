#include "application.h"

int application(void)
{
    // setup devices
    const uint32_t LED_PIN = PICO_DEFAULT_LED_PIN;
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    uint8_t gpio_status = 0;

    while (1)
    {
        // do application. blink the led
        gpio_status = ~gpio_status & 0x1;
        gpio_put(LED_PIN, gpio_status);

        sleep_ms(250);
    }
}