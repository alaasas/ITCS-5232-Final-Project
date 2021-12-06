/// @description 


// overwrite the pervious file 
//check if a file exist

if(file_exists(SAVEfile)) file_delete(SAVEfile);

//Create a new save file 
var myfile; 
myfile = file_text_open_write(SAVEfile);
file_text_write_real(myfile,room);
file_text_close(myfile);


