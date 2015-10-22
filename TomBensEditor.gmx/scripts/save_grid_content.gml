///save_grid_content(ds_grid);

if ds_exists(argument0,ds_type_grid)
{
var fname=get_save_filename_ext('ds_grid|*.*','','','Save ds_grid for Game Maker..');
if fname!=''
{
var f=file_text_open_write(fname);
file_text_write_string(f,ds_grid_write(argument0));
file_text_close(f);
}

return(1);
}
else
return(0);






