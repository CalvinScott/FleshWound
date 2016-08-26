// state_parent_knockback(next_state)
is_friction = true;

// Move
move();

if (hspd == 0) {
    state = argument[0];
}

// part_particles_create(Game.ps, x+random_range(-16, 16), y+sprite_height-sprite_yoffset-2, Game.pt_dust, abs(hspd/2));
