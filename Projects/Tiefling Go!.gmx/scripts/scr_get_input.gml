///scr_get_input
right_key = keyboard_check(vk_right);
down_key = keyboard_check(vk_down);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
dash_key = keyboard_check_pressed(ord('C'));
attack_key = keyboard_check_pressed(ord('X'));
swap_key = keyboard_check_pressed(ord('Z'));
spell_key = keyboard_check_pressed(ord('V'));
inv_key = keyboard_check_pressed(ord('I'));
pause_key = keyboard_check_pressed(vk_space);

   
// Check for gamepad input
gp_id = 0;
if (gamepad_is_connected(gp_id))
{
    right_key = (gamepad_axis_value(gp_id ,gp_axislh) >= .5);
    left_key = (gamepad_axis_value(gp_id ,gp_axislh) <= -.5);
    down_key = (gamepad_axis_value(gp_id ,gp_axislv) >= .5);
    up_key = (gamepad_axis_value(gp_id ,gp_axislv) <= -.5);
    dash_key = gamepad_button_check_pressed(gp_id,gp_face1);
    attack_key = gamepad_button_check_pressed(gp_id,gp_face3);
    spell_key = gamepad_button_check_pressed(gp_id,gp_face2);
    pause_key = gamepad_button_check_pressed(gp_id,gp_start);
    swap_key = gamepad_button_check_pressed(gp_id,gp_face4);
}
