lib\mod2gbt\mod2gbt hb_song.mod song 1

c:\gbdk\bin\lcc  -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o main.o main.c
c:\gbdk\bin\lcc  -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o output.o output.c
c:\gbdk\bin\lcc  -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o gbt_player.o lib\gbt_player\gbt_player.s
c:\gbdk\bin\lcc  -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o gbt_player_bank1.o lib\gbt_player\gbt_player_bank1.s

c:\gbdk\bin\lcc  -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wl-yt1 -Wl-yo4 -Wl-ya0 -o GameBoy30thAnniversary.gb main.o output.o gbt_player.o gbt_player_bank1.o



del *.o *.lst

pause
