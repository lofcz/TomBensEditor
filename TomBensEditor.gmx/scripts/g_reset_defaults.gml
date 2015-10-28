///grid_reset_defaults(clear_grid_bool)
with(oController)
{

//clear grid and free surfaces
if argument_count>0 
{ 
 if argument[0]==true
 {
  for(i=0;i<max_surfaces;i++)
  {
   if surface_exists(g[#_id,i]) { surface_free(g[#_id,i]); }
  }
 ds_grid_clear(g,0); max_surfaces=5; 
 }
} 
else max_surfaces=ds_grid_height(g);

//reset variables
clicked          = 0; // Kontrola, zda bylo tento step kliknuto myší (bool)
creating_surface = 0; // Zda vytvářime surface (bool)
clicked_index    = -1; // Index vybraného povrchu, -1 značí žádný povrch (int32)
moving           = 0; // Zda je tažen (bool)
resizing         = 0; // Zda je měněna velikost (bool)
rotating         = 0; // Zda je otáčeno (bool)
source_mode      = 0; // režim manipulace se zdrojem obsahu ( 0 ukazuje výsledek, 1 zdroj obsahu )
layer            = 0; // aktuální hloubka pro nové surfaces - čím vyšší, tím je hlouběji
group            = -1; // aktuální group pro nové surfaces: -1 znamená bez group


//průběžné
start_xx = 0;  // X-ová souřadnice
start_yy = 0;  // Y-ová souřadnice
dif_x=0;       // rozdílová X
dif_y=0;       // rozdílová Y
Mx=mouse_x;    // cursor buffer x
My=mouse_y;    // cursor buffer y
}



