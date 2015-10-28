///mode_name(mode_number);

switch(argument0)
{

case SELECT: return('SELECT'); break;
case ADD: return('ADD'); break;
case KILL: return('DELETE'); break;
case MOVE: return('MOVE'); break;
case RESIZE: return('RESIZE'); break;
case DEPTH: return('DEPTH'); break;
case SCALE: return('SCALE'); break;
case GMOVE: return('GRID MOVE'); break;
case GSIZE: return('GRID RESIZE'); break;

default: return('UNKNOWN'); break;
}

