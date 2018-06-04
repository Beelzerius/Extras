///scr_par_blood_init();
{
    // Initialize our global blood particle
    global.pt_blood = part_type_create();
    var pt = global.pt_blood;
    
    // Set the settings for the blood particle
    part_type_shape(pt, pt_shape_square);
    part_type_size(pt, .02, .04, 0, 0);
    part_type_colour2(pt, c_red, c_maroon);
    part_type_speed(pt, 2, 5, -.2, 0);
    part_type_direction(pt,0, 360, 0, 0);
    part_type_gravity(pt, .2, 270);
    part_type_life(pt, 10, 15);
}
