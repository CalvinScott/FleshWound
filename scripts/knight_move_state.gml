///skeleton_move_state
// Move right
is_friction = true;
if (Input.right) {
    if (hspd != 0 && image_xscale == -1) {
        hspd *= -1;
    }
    
    if (hspd < maxspd) {
        hspd += spd;
    }
    image_xscale = 1;
    sprite_index = spr_skeleton_run;
    image_speed = hspd/maxspd*.3;
    is_friction = false;
    if ((step == 0 && image_index >=2) || (step == 1 && image_index >= 5)) {
        step ++;
        audio_play_sound(snd_step, 7, false);
    }
}

// Move left
if (Input.left) {
    if (hspd != 0 && image_xscale == 1) {
        hspd *= -1;
    }
    
    if (hspd > -maxspd) {
        hspd -= spd;
    }
    image_xscale = -1;
    sprite_index = spr_skeleton_run;
    image_speed = abs(hspd/maxspd*.3);
    is_friction = false;
    
    if ((step == 0 && image_index >=2) || (step == 1 && image_index >= 5)) {
        step ++;
        audio_play_sound(snd_step, 7, false);
    }
}

// Stop animating
if (!Input.right && !Input.left) {
    sprite_index = spr_skeleton_idle;
    image_speed = .15;
    step = 0;
}

// Attack
if (Input.attack) {
    hspd = 0;
    image_index = 0;
    state = skeleton_attack_one_state;
}

if (Input.roll) {
    image_index = 0;
    state = skeleton_roll_state;
}

// Gravity
apply_gravity();

// Collision script
move();
