///scr_move_axes(x_mv_axis, y_mv_axis, mv_deadzone, mv_speed)

var x_mv_axis = argument0;
var y_mv_axis = argument1;
var mv_deadzone = argument2;
var mv_magnitude = point_distance(0, 0, x_mv_axis, y_mv_axis);
var mv_speed = argument3;


// Move the character if you can

if (mv_magnitude >= mv_deadzone) {
   if (!place_meeting(x + (x_mv_axis * mv_speed), y + (y_mv_axis * mv_speed), obj_solid)) {
      x += x_mv_axis * mv_speed;
      y += y_mv_axis * mv_speed;
   } else if (!place_meeting(x + (x_mv_axis * mv_speed), y, obj_solid)) {
     x += x_mv_axis * mv_speed;
   } else if (!place_meeting(x, y + (y_mv_axis * mv_speed), obj_solid)) {
     y += y_mv_axis * mv_speed;
   }
}
