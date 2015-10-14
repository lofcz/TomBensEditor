///g_new_place()

//funkce vrací volné místo v grid ( když není, tak se vyrobí )

for(i=0;i<max_surfaces;i++)
{
if g[#i,_id]==0 return(i); 
}

//místo nenalezeno - resize grid
max_surfaces++;
ds_grid_resize(g,max_surfaces,grid_arguments);
return(max_surfaces-1);





