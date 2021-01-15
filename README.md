# SoftPwmSTM32

With this library it is possible to have up to **20 pwm outputs** on the digital pins of the development boards and microcontrollers compatible with **STM32 for Arduino**.

To work with the library, it must be included in the following way:

```c
#include "softPwmStm32.h"
```

Inside the **setup** block we initialize our library and configure the pins that we want to use with pwm using the **softPwmSTM32Attach** function passing as arguments the pin we want and the percentage of pwm we want in said pin as follows:

```c
void setup() {
  softPwmSTM32Init();
  softPwmSTM32Attach(LED_BUILTIN,0);
}
```

To update the pwm of our pin we use the **softPwmSTM32Set** function, as shown in the following example:

```c
void loop() {
  for(uint8_t i=0;i<100;i++){
    softPwmSTM32Set(LED_BUILTIN,i);
    delay(2);
  }
  for(uint8_t i=100;i>0;i--){
    softPwmSTM32Set(LED_BUILTIN,i);
    delay(2);
  }
}
```

To deactivate the softPwm on one of our pins we use the **softPwmSTM32Dettach** function:

```c
softPwmSTM32Dettach(LED_BUILTIN);
```