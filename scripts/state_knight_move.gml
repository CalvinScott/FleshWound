// Knight move

// TODO: Parse out Input1 for generic input

// Move right
is_friction = true; //
if (InputOne.right) {
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
if (InputOne.left) {
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

// Standing still
if (!InputOne.right && !InputOne.left) {
    sprite_index = spr_knight_idle;
    image_speed = .15;
    step = 0;
}

// Attack
if (InputOne.attack) {
    hspd = 0;
    image_index = 0;
    state = state_knight_attack_one;
}

// Roll
//if (InputOne.roll) {
//    image_index = 0;
//    state = state_knight_roll;
//}

// Gravity
apply_gravity();

// Collision script
move();
