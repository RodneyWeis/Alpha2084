///scr_get_gamepad_input(device)

var device = argument0;

// Left-stick (movement) controller input
x_mv_axis = gamepad_axis_value(device, gp_axislh);  //(-1 ... 1)
y_mv_axis = gamepad_axis_value(device, gp_axislv);

// Right-stick (fire) controller input
x_fr_axis = gamepad_axis_value(device, gp_axisrh);
y_fr_axis = gamepad_axis_value(device, gp_axisrv);