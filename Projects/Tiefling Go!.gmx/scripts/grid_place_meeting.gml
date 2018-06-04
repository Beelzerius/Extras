///grid_place_meeting(x, y);
var xx = argument0;
var yy = argument1;

//Remember our position
var xp = x;
var yp = y;

//Update the postion for the bbox calculations
x = xx;
y = yy;

//Check for x meeting
var x_meeting = (obj_level.grid[#bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) or 
                (obj_level.grid[#bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

//Check for y meeting               
var y_meeting = (obj_level.grid[#bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) or 
                (obj_level.grid[#bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);

var center_meeting = obj_level.grid[#xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;
// Move back
x = xp;
y = yp;

//Return either true or false

return x_meeting or y_meeting or center_meeting;
