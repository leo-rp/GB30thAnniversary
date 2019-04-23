
#include <gb/gb.h>
#include "lib/gbt_player/gbt_player.h"
#include "background.c"
extern const unsigned char * song_Data[];
//extern const unsigned char hb_map_data[];
//extern const unsigned char hb_tile_data[];

UBYTE counter;

void main()
{

	HIDE_BKG;
	HIDE_SPRITES;

	counter = 0;  
	STAT_REG = 8;
	disable_interrupts();

	gbt_play(song_Data, 2, 7);
	gbt_loop(2);
	set_bkg_data(0, 132, hb_tile_data);  	
	set_bkg_tiles(0, 0, 20, 18,  hb_map_data ); 

	set_interrupts(VBL_IFLAG);
	enable_interrupts();  
	SHOW_BKG;
	SHOW_SPRITES;
  
	while (1)	{		
		
		wait_vbl_done();
		gbt_update(); // This will change to ROM bank 1.
	}
}
