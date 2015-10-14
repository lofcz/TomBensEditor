///g_surface_under_mouse_position()

//funkce vrací pozici v gridu, pokud je pod myší surface, jinak -1

var return_value=-1;

//pokud je víc surfaces nad sebou vezme se podle nejnižší depth a pokud je stejná depth, tak poslední podle pořadí vytvoření
ds_grid_sort(g,_id,sestupne);
ds_grid_sort(g,_depth,vzestupne);

if source_mode==0 //pokud je zapnut source mode, berou se v potaz polohy zdroje obsahu
{
 for(i=0;i<max_surfaces;i++)
  {
   if point_in_rectangle(mouse_x,mouse_y,g[#_x1,i],g[#_y1,i],g[#_x2,i],g[#_y2,i]) { return_value=i; break; }
  }
}
else
{
 for(i=0;i<max_surfaces;i++)
  {
   if point_in_rectangle(mouse_x,mouse_y,g[#_xs1,i],g[#_ys1,i],g[#_xs2,i],g[#_ys2,i]) { return_value=i; break; }
  }
}
return(return_value);




