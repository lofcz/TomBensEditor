///g_surface_selected(index_of_creation)

//funkce vrací bool: 1 - surface je selected, jinak 0

var return_value=0;
var temp=g_surface_exists(argument0);

if temp<0 return(return_value) else return(g[#temp,_selected]);




