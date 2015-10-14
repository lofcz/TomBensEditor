///g_surface_under_mouse()

//funkce vrací index of creation, pokud je pod myší surface, jinak -1

var return_value=-1;

//pokud je víc surfaces nad sebou vezme se podle nejnižší depth a pokud je stejná depth, tak poslední podle pořadí vytvoření
//ds_grid_sort(g,_id,sestupne);
//ds_grid_sort(g,_depth,vzestupne);

if source_mode==0 //pokud je zapnut source mode, berou se v potaz polohy zdroje obsahu
{
 for(i=0;i<grid_arguments;i++)
  {
   if point_in_rectangle(mouse_x,mouse_y,g[#i,_x1],g[#i,_y1],g[#i,_x2],g[#i,_y2]) return_value=g[#i,_id]; break;
  }
}
else
{
 for(i=0;i<grid_arguments;i++)
  {
   if point_in_rectangle(mouse_x,mouse_y,g[#i,_xs1],g[#i,_ys1],g[#i,_xs2],g[#i,_ys2]) return_value=g[#i,_id]; break;
  }
}
return(return_value);




