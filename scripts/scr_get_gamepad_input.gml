///scr_get_gamepad_input(device)

var device = argument0;

// Left-stick (movement) controller input
x_mv_axis = gamepad_axis_value(device, gp_axislh);  //(-1 ... 1)
y_mv_axis = gamepad_axis_value(device, gp_axislv);

// Right-stick (fire) controller input
x_fr_axis = gamepad_axis_value(device, gp_axisrh);
y_fr_axis = gamepad_axis_value(device, gp_axisrv);

// Select controller input
btn_select = gamepad_button_check_pressed(device, gp_select);

// Start controller input
btn_start = gamepad_button_check_pressed(device, gp_start);
