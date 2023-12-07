// essai projet leds boutons

#include "sys/alt_stdio.h"
#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h" // pour �viter de renseigner les adresses physiques des p�riph�riques
#include "unistd.h" 				// pour la fonction d�lai

#define boutons (volatile char *) BOUTONS_BASE
#define leds (unsigned int*) LEDS_BASE

#define freq (unsigned int *) AVALON_PWM_0_BASE
#define duty (unsigned int *) (AVALON_PWM_0_BASE + 4)
#define control (unsigned int *) (AVALON_PWM_0_BASE + 8)






unsigned int a;

int main()
{

	*freq = 0x0400; // divise clk par 1024
	*duty = 0x0200; // RC = 50
	*control = 0x0003;
  alt_putstr("Salut ext!\n");		// test si communication OK

  while (1)
  	  {
	  alt_putstr("Salut int!\n");	// test si communication OK
	  //*leds = *boutons;
	  a = *boutons & 3;
	  printf("boutons = %d \n", a);
	  usleep(1000000);
	  switch(a)
	  	  	  {
	  	  	  	  case 0 : *leds=0; break;
	  	  	  	  case 1 : *leds=0; break;
	  	  	  	  case 2 : break;
	  	  	  	  case 3 : *leds=*leds + 1; break;
	  	  	  	  default : *leds = 0; break;
	  	  	  }
	  }
	  //*leds = 0x0F;
	  //usleep(1000000);
	  //*leds = 0xF0;
	  //usleep(1000000);
  	  //}
  return 0;
}

