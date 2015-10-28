///menu_function(F,level);

//backfire
if argument_count<2 return(0);

//obsluha pro menu level
switch (argument[1]) //level switch
{

//MAIN MENU
//---level 0----------------------------------------------------------------------------------
case 0:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  return(1);
 break;
 //F2
 case 2:
  return(2);
 break;
  //F3
 case 3:
  return(3);
 break;
  //F4
 case 4:
  return(4);
 break;
  //F5
 case 5:
  value=SELECT;
  return(argument[1]);
 break;
  //F6
 case 6:
  value=ADD;
  return(argument[1]);
 break;
  //F7
 case 7:
  return(5);
 break;
   
 
 //F11
 case 11:
  return(argument[1]);
 break;
 
 //---Other keycodes---
 default:
 warning(001,string(argument[0]));
 return(argument[1]);
 break; 
 }
break;
//---

//FILE DIALOGS
//---level 1----------------------------------------------------------------------------------
case 1:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  with(oController) { event_user(2); }  //LOAD GRID
  return(0);
 break;
 //F2
 case 2:
  with(oController) { event_user(3); }  //SAVE GRID
  return(0);
 break;
  
 
 //F11
 case 11:
  return(argument[1]);                  //HELP
 break;

 //F12
 case 12:                               //BACK
  return(0);
 break;
 
   
 //---Other keycodes---
 default:
 warning(001,string(argument[0]));
 return(argument[1]);
 break; 
 }
break;
//---

//TRANSFORMATION MODES
//---level 2----------------------------------------------------------------------------------
case 2:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  value=MOVE;                            //MOVE
  return(0);
 break;
 //F2
 case 2:
  value=RESIZE                           //RESIZE
  return(0);
 break;
 //F3
 case 3:
  value=SCALE                            //SCALE
  return(0);
 break;
 //F4
 case 4:
  value=ROTATE                           //ROTATE
  return(0);
 break;   
 
 //F11
 case 11:
  return(argument[1]);                  //HELP
 break;

 //F12
 case 12:                               //BACK
  return(0);
 break;
 
   
 //---Other keycodes---
 default:
 warning(001,string(argument[0]));
 return(argument[1]);
 break; 
 }
break;
//---


//KILL MODES
//---level 3----------------------------------------------------------------------------------
case 3:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  value=KILL;                            //SNIPER
  return(0);
 break;
 //F2
 case 2:
  return(argument[1]);                   //prázdné místo - předchází překlepům
 break;
 //F3
 case 3:
  with(oController) { event_user(0);}    //KILL'em ALL
  return(0);
 break;

 
 //F11
 case 11:
  return(argument[1]);                  //HELP
 break;

 //F12
 case 12:                               //BACK
  return(0);
 break;
 
   
 //---Other keycodes---
 default:
 warning(001,string(argument[0]));
 return(argument[1]);
 break; 
 }
break;
//---

//SURFACE PROPERTIES
//---level 4----------------------------------------------------------------------------------
case 4:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  value=DEPTH;                            //DEPTH
  return(0);
 break;
 //F2
 case 2:
  return(argument[1]);                   //GROUP - not implemented yet
 break;


 
 //F11
 case 11:
  return(argument[1]);                  //HELP
 break;

 //F12
 case 12:                               //BACK
  return(0);
 break;
 
   
 //---Other keycodes---
 default:
 warning(001,string(argument[0]));
 return(argument[1]);
 break; 
 }
break;
//---


//GUIDES
//---level 5----------------------------------------------------------------------------------
case 5:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:                                 //vypínač přichytávání mřížky
  oController.mrizka_snap=!oController.mrizka_snap                            
  return(argument[1]);
 break;
 //F2
 case 2:
  oController.guides=!oController.guides
  return(argument[1]);                   //vypínač zobrazení mřížky
 break;
 //F3
 case 3:
  return(argument[1]);                   //prázdné místo - předchází překlepům
 break;
  //F4
 case 4:
  value=GMOVE;
  return(0);
 break;
  //F5
 case 5:
  value=GSIZE;
  return(0);
 break; 
 
 //F11
 case 11:
  return(argument[1]);                  //HELP
 break;

 //F12
 case 12:                               //BACK
  return(0);
 break;
 
   
 //---Other keycodes---
 default:
 warning(001,string(argument[0]));
 return(argument[1]);
 break; 
 }
break;
//---


//GO TO HELL
//---level 666----------------------------------------------------------------------------------
case 666:
 switch(argument[0]) //key switch
 {
 //F1
 case 1:
  game_end();
 break;

 //F12
 case 12:
  return(0);
 break; 
 
 //---Other keycodes---
 default:
 warning(001,string(argument[0]));
 return(argument[1]);
 break; 
 }
break;
//---





//nedefinovaný level
default:
 warning(002,string(argument[1]));
return(0);
break; 
}






