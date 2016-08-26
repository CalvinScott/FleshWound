///skeleton_roll_state
is_friction = false;
sprite_index = spr_skeleton_roll;
image_speed = .4;
hspd = image_xscale*maxspd*1.25;

// Move
move();

// Gravity
apply_gravity();
