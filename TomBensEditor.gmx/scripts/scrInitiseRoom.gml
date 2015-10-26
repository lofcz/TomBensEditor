/// scrInitiseRoom()

/*
Skript se stará o vytvoření výchozích instancí objektů v místnosti.
*/

instance_create(0,0,oCursorMode);
instance_create(0,0,oController);
instance_create(0,0,obj_inspector);

globalvar echo;
echo=on;
warning(); //list všech warnings

