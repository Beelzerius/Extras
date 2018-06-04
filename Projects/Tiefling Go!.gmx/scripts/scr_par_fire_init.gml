///scr_par_blood_init();
{
    // Initialize our global blood particle
    global.pt_fire = part_type_create();
    var pt = global.pt_fire;
    
    // Set the settings for the blood particle
    part_type_shape(pt, pt_shape_square);
    part_type_size(pt, .02, .04, 0, 0);
    part_type_colour3(pt, c_white, c_yellow, c_orange);
    part_type_speed(pt, 2, 5, -.4, 0);
    part_type_direction(pt, 80, 100, 0, 0);
    part_type_gravity(pt, .1, 90);
    part_type_life(pt, 6, 10);
}
