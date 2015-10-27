///menu_names(F,level);

//backfire
if argument_count<2 return('');

//colors
var ccc,orig,on_c,off_c;
orig=draw_get_colour(); //příchozí barva

dkg_blue=make_colour_rgb(0,0,60) //barva složky
on_c=c_maroon;                   //barva switche ON
off_c=c_olive;                   //barva switche OFF

if orig==c_black ccc=dkg_blue else ccc=orig;




//názvy pro menu level:
switch (argument[1]) //level switch
{

//---level 0----------------------------------------------------------------------------------
case 0:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  clr(ccc)
  return('FILE');
 break;
 //F2
 case 2:
  clr(ccc)
  return('TRANSFORM');
 break;
  //F3
 case 3:
  clr(ccc)
  return('DELETE');
 break;
 //F4
 case 4:
  clr(ccc)
  return('PROPS');
 break;
 //F5
 case 5:
  return('SELECT');
 break;
 //F6
 case 6:
  return('ADD');
 break;  
 //F7
 case 7:
  return('GRID');
 break;
 //F8
 case 8:
  return('BLEND');
 break;   
  
 //F11
 case 11:
  return('HELP');
 break;
 
 //---Other keycodes---
 default:
 return('');
 break; 
 }
break;
//---

//---level 1----------------------------------------------------------------------------------
case 1:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  return('LOAD DATA');
 break;
 //F2
 case 2:
  return('SAVE DATA');
 break;
 
 
 //F11
 case 11:
  return('HELP');
 break;
 //F12
 case 12:
  return('BACK');
 break; 
 
 //---Other keycodes---
 default:
 return('');
 break; 
 }
break;
//---

//---level 2----------------------------------------------------------------------------------
case 2:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  return('MOVE');
 break;
 //F2
 case 2:
  return('RESIZE');
 break;
 //F3
 case 3:
  return('SCALE');
 break;
 //F4
 case 4:
  return('ROTATE');
 break;
 
 
 //F11
 case 11:
  return('HELP');
 break;
 //F12
 case 12:
  return('BACK');
 break; 
 
 //---Other keycodes---
 default:
 return('');
 break; 
 }
break;
//---

//---level 3----------------------------------------------------------------------------------
case 3:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  return('KILL');
 break;
 //F2
 case 2:
  return(' ');
 break;
 //F3
 case 3:
  return('KILL ALL');
 break;
 
 
 //F11
 case 11:
  return('HELP');
 break;
 //F12
 case 12:
  return('BACK');
 break; 
 
 //---Other keycodes---
 default:
 return('');
 break; 
 }
break;
//---

//---level 4----------------------------------------------------------------------------------
case 4:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  return('DEPTH');
 break;
 //F2
 case 2:
  clr(ccc)
  return('GROUPS');
 break;
 
 
 //F11
 case 11:
  return('HELP');
 break;
 //F12
 case 12:
  return('BACK');
 break; 
 
 //---Other keycodes---
 default:
 return('');
 break; 
 }
break;
//---

//---level 5----------------------------------------------------------------------------------
case 5:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
 if oController.mrizka_snap { clr(off_c); return('SNAP OFF'); } else { clr(on_c); return('SNAP ON'); }
 break;
 //F2
 case 2:
 if oController.guides { clr(off_c); return('HIDE'); } else { clr(on_c); return('SHOW'); }
 break;

 //F3
 case 3:
  return(' '); //empty place
 break; 
  
 //F4
 case 4:
  return('G.MOVE');
 break;
 
 //F5
 case 5:
  return('G.SIZE');
 break;
  
 
 
 //F11
 case 11:
  return('HELP');
 break;
 //F12
 case 12:
  return('BACK');
 break; 
 
 //---Other keycodes---
 default:
 return('');
 break; 
 }
break;
//---


//---level 999----------------------------------------------------------------------------------
case 666:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  return('EXIT TO OS');
 break;

 
 //F12
 case 12:
  return('BACK');
 break; 
 
 //---Other keycodes---
 default:
 return('');
 break; 
 }
break;
//---


//nedefinovaný level
default:
 warning(002,string(argument[0]));
return('');
break; 
}



