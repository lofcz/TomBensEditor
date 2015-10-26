///warning(number,optional_string)

//vrací existenci warningu ( bool )

// volání bez argumentů - vypsat všechny warningy
if argument_count==0
 {
 if echo
 {
 show_debug_message('*** LIST of WARNINGS ***');
 for(i=0;i<999;i++) {  echo=off; if warning(i) { echo=on; warning(i); } }
 show_debug_message('*** END of LIST ***');
 echo=on;
 }
 }
else //vypsat jeden warning
{
switch(argument[0])
{
case 001:
if echo show_debug_message('001| menu function: nedefinovaný Fkey keycode');
break;
case 002:
if echo show_debug_message('002| menu function: nedefinovaný level menu');
break;


default: 
if echo show_debug_message(string(argument[0])+'| číslo warningu neexistuje..');
return(false) 
break; //neplatný warning
}

if echo && argument_count>=2 show_debug_message('* '+argument[1]);
return(true);
}

