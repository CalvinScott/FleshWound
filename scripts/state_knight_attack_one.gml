// state_knight_attack_one
sprite_index = spr_knight_attack_one;
image_speed = .25;

// Do damage
if (image_index >= 0 && !attacked) {
    //audio_play_sound(snd_miss, 6, false);
    var damage = instance_create(x, y, Damage);
    damage.sprite_index = spr_knight_attack_one_damage;
    damage.image_xscale = image_xscale;
    damage.creator = id;
    attacked = true;
    damage.knockback = 2;
    damage.alarm[0] = 2/image_speed;
    damage.damage = KnightStats.strength div 5;
}

// Combo
if ((round(image_index) == 2 || round(image_index) == 3)  && InputOne.attack) {
    sprite_index = spr_knight_attack_two;
    image_index = 0;
    attacked = false;
    state = state_knight_attack_two;
}
