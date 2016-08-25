///enemy_death_state
sprite_index = spr_knight_die;
is_friction = true;
if (image_index >= image_number - 1) {
    image_index = image_number-1;
    image_speed = 0;
    if (image_alpha > 0) {
        image_alpha -= .1;
    } else {
        instance_destroy();
    }
}

move();
