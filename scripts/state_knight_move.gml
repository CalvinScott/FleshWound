///skeleton_move_state
// Move right
is_friction = true;
if (Player1.right) {
    if (hspd != 0 && image_xscale == -1) {
        hspd *= -1;
    }
    
    if (hspd < maxspd) {
        hspd += spd;
    }
    image_xscale = 1;
    sprite_index = spr_knight_run;
    image_speed = hspd/maxspd*.3;
    is_friction = false;
    if ((step == 0 && image_index >=2) || (step == 1 && image_index >= 5)) {
        step ++;
        //audio_play_sound(snd_step, 7, false);
    }
}

// Move left
if (Player1.left) {
    if (hspd != 0 && image_xscale == 1) {
        hspd *= -1;
    }
    
    if (hspd > -maxspd) {
        hspd -= spd;
    }
    image_xscale = -1;
    sprite_index = spr_knight_run;
    image_speed = abs(hspd/maxspd*.3);
    is_friction = false;
    
    if ((step == 0 && image_index >=2) || (step == 1 && image_index >= 5)) {
        step ++;
        //audio_play_sound(snd_step, 7, false);
    }
}

// Stop animating
if (!Player1.right && !Player1.left) {
    sprite_index = spr_knight_idle;
    image_speed = .15;
    step = 0;
}

// Attack
if (Player1.attack) {
    hspd = 0;
    image_index = 0;
    state = state_knight_attack_one;
}

if (Player1.roll) {
    image_index = 0;
    state = state_knight_roll;
}

// Gravity
apply_gravity();

// Collision script
move();
