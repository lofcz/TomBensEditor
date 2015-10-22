///load_grid_content(ds_grid);

if ds_exists(argument0,ds_type_grid)
{
var fname=get_open_filename_ext('ds_grid|*.*','','','Load ds_grid..');
if fname!=''
{
g_reset_defaults(true);

var f=file_text_open_read(fname);
ds_grid_read(argument0,file_text_read_string(f));
file_text_close(f);
}

return(1);
}
else
return(0);




