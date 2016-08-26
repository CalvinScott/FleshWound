///skeleton_attack_three_state
image_speed = .25;

// Do damage
if (image_index >= 2 && !attacked) {
    audio_play_sound(snd_miss, 6, false);
    var damage = instance_create(x, y, Damage);
    damage.sprite_index = spr_skeleton_attack_three_damage;
    damage.image_xscale = image_xscale;
    damage.creator = id;
    damage.knockback = 5;
    damage.alarm[0] = 3/image_speed;
    damage.damage = SkeletonStats.strength div 3;
    attacked = true;
}
