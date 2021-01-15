#include "softPwmStm32.h"

void setup() {
  softPwmSTM32Init();
  softPwmSTM32Attach(LED_BUILTIN,0);
}

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