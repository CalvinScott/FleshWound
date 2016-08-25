///enemy_chase_state
sprite_index = spr_boss_attack;
image_speed = .3;

/// Attack
if (image_index >= 7 && !attacked) {
    audio_play_sound(snd_big_hit, 6, false);
    audio_play_sound(snd_hit_two, 6, false);
    var damage = instance_create(x, y, Damage);
    damage.sprite_index = spr_boss_attack_damage;
    damage.image_xscale = image_xscale;
    damage.creator = id;
    attacked = true;
    damage.damage = 20;
    damage.knockback = 20;
    damage.alarm[0] = 2/image_speed;
}
