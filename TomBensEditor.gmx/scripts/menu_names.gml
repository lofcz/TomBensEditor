///menu_names(F,level);

//backfire
if argument_count<2 return('');

//názvy pro menu level:
switch (argument[1]) //level switch
{

//---level 0----------------------------------------------------------------------------------
case 0:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  return('FILE');
 break;
 //F2
 case 2:
  return('TRANSFORM');
 break;
  //F3
 case 3:
  return('DELETE');
 break;
 //F4
 case 4:
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
  return('LOAD GRID');
 break;
 //F2
 case 2:
  return('SAVE GRID');
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
  return('GROUP');
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



