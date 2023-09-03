/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************
*/

#include <stdint.h>
#include "GPIO_interface.h"
#include "RCC_interface.h"
#include "LCD_interface.h"
volatile const uint32_t var1;
int main(void)
{

	MRCC_voidInit();
	MRCC_voidPeripheralClockEnable(RCC_APB2,GPIOA);
	LCD_Init();
	LCD_Send_String("Without any IDEs");

	while(1)
	{

	}

}