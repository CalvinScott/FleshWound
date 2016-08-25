///enemy_chase_state
sprite_index = spr_knight_attack;
image_speed = .3;

/// Attack
if (image_index >= 5 && !attacked) {
    audio_play_sound(snd_miss, 6, false);
    var damage = instance_create(x, y, Damage);
    damage.sprite_index = spr_skeleton_attack_one_damage;
    damage.image_xscale = image_xscale;
    damage.creator = id;
    attacked = true;
    damage.damage = 10;
    damage.knockback = 12;
    damage.alarm[0] = 2/image_speed;
}
