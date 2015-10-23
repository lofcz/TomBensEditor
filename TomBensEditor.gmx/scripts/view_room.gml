////view_room(view_number,border_x,border_y);

//nastaví velikost okna podle velikosti displeje ( mínus border )


view_enabled=true;
view_visible[argument0]=true;
view_xview[argument0]=0;
view_yview[argument0]=0;
view_wview[argument0]=room_width;
view_hview[argument0]=room_height;

window_set_rectangle(argument1,argument2,display_get_width()-(2*argument1),display_get_height()-(2*argument2));

view_xport[argument0]=0;
view_yport[argument0]=0;
view_wport[argument0]=display_get_width()-(2*argument1);
view_hport[argument0]=display_get_height()-(2*argument2);
