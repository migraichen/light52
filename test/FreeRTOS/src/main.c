/*
 * FreeRTOS Kernel V10.0.1
 * Copyright (C) 2017 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */

#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"

#include "../../include/light52.h"

#define main_TASK_PRIORITY		    ( tskIDLE_PRIORITY + 1 )

static void prvSetupHardware( void );

void ATaskFunction( void *pvParameters );
void ATaskFunction2( void *pvParameters );

unsigned int block = 0;

int main( void )
{
	
	static const char *pcTextForTask1 = "Task 1";
    static const char *pcTextForTask2 = "Task 2";
	
    /* Perform any hardware setup necessary. */
    prvSetupHardware();

    /* Send a banner to the serial port, in case it is connected. */
    printf("\n\r");
    printf("Light52 project -- " __DATE__ " " __TIME__ "\n\n\r");
    printf("FreeRTOS test.\n\r");
	
    xTaskCreate( ATaskFunction, "BlinkTask", 1000, (void*)pcTextForTask1, main_TASK_PRIORITY, NULL );
    xTaskCreate( ATaskFunction2, "RXTask", 1000, (void*)pcTextForTask2, main_TASK_PRIORITY, NULL );

    /* Start the created tasks running. */
    vTaskStartScheduler();

    /* Execution will only reach here if there was insufficient heap to
    start the scheduler. */
    while(1);

    return 0;
}

static void prvSetupHardware( void )
{
	P0 = 0x00;
	P1 = 0x00;
}

void ATaskFunction( void *pvParameters )
{
    char *pcTaskName;
	
    pcTaskName = ( char * ) pvParameters;

	while(block);
	block = 1;
	printf("Hallo von %s!\n\r", pcTaskName);
    block = 0;
    

    while(1)
    {	
        while(block);
	    block = 1;
		printf("%c", 0x57);
		block = 0;
		P0 ^= 0xff;
		P1 ^= 0xff;
		vTaskDelay(100);
    }

    vTaskDelete( NULL );
}

void ATaskFunction2( void *pvParameters )
{
    char *pcTaskName;
	
	unsigned char ucRx;
	
    pcTaskName = ( char * ) pvParameters;

	while(block);
	block = 1;
	printf("Hallo von %s!\n\r", pcTaskName);
    block = 0;
	
	//
	
    while(1)
    {
		ucRx = getchar();
		while(block);
	    block = 1;
		putchar(ucRx);
		block = 0;
    }

    vTaskDelete( NULL );
}
