///get_F_key();

//vraci podle stisknuté F1..F12 hodnotu 1..12, při žádné vrací 0


var kind=ev_keyrelease;
if argument_count>0 kind=argument[0];


for (_F=112;_F<=123;_F++)
{
switch(kind)
{
case ev_keypress: if keyboard_check_pressed(_F) return(_F-111); break;
case ev_keyrelease: if keyboard_check_released(_F) return(_F-111); break;
case ev_keyboard: if keyboard_check(_F) return(_F-111); break;

default: show_error('Bad kind!',true); break;
}
}

return(0);

