///scr_fire_axes(x_fr_axis, y_fr_axis, fr_deadzone)

var x_fr_axis = argument0;
var y_fr_axis = argument1;
var fr_deadzone = argument2;
var fr_magnitude = point_distance(0, 0, x_fr_axis, y_fr_axis);

var fire_delay = 8;

// Fire weapon

if (fr_magnitude >= fr_deadzone) {
   var xx = x_fr_axis;
   var yy = y_fr_axis;
   var quad;
   var angle_threshold = 0.5;
   var fr_dir = 0;
   
   // Insert bullet generation code here
   
   // Determine quadrant of fr direction
   if (xx >= 0) {
      if (yy >= 0) {
         // Quadrant IV, 270-359
         quad = 4;
         if (xx >= yy) {
            if (xx < yy * 2) {
              fr_dir = 315;
            } else {
              fr_dir = 0;
            }
         } else {
           if (yy < xx * 2) {
              fr_dir = 315;
           } else {
             fr_dir = 270;
           }
         }
         
      } else {
        // Quadrant I, 0-89
        quad = 1;
        if (xx >= abs(yy)) {
            if (xx < abs(yy * 2)) {
              fr_dir = 45;
            } else {
              fr_dir = 0;
            }
         } else {
           if (abs(yy) < xx * 2) {
              fr_dir = 45;
           } else {
             fr_dir = 90;
           }
         }
      
      }
   } else {
     if (yy >= 0) {
        // Quadrant III, 180-269
        quad = 3;
        if (yy >= abs(xx)) {
            if (yy < abs(xx * 2)) {
              fr_dir = 225;
            } else {
              fr_dir = 270;
            }
         } else {
           if (abs(xx) < yy * 2) {
              fr_dir = 225;
           } else {
             fr_dir = 180;
           }
         }
     
     } else {
       // Quadrant II, 90-179
       quad = 2;
       if (abs(xx) >= abs(yy)) {
            if (abs(xx) < abs(yy * 2)) {
              fr_dir = 135;
            } else {
              fr_dir = 180;
            }
         } else {
           if (abs(yy) < abs(xx * 2)) {
              fr_dir = 135;
           } else {
             fr_dir = 90;
           }
         }
     }
   }
   
   var myBullet = instance_create(x, y, obj_bullet);
   myBullet.direction = fr_dir;
   myBullet.image_angle = myBullet.direction;
   audio_play_sound(snd_bullet, 1, false);
   canFire = false;
   obj_player.alarm[0] = fire_delay;
}
