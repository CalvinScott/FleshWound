///enemy_chase_state
is_friction = true;
sprite_index = spr_knight_block;
image_speed = 0;
apply_gravity();
move();
if (alarm[1] <= 0) state = enemy_chase_state;
