///boss_chase_state
is_friction = true;
sprite_index = spr_boss_walk;
image_speed = .2;
if (instance_exists(Skeleton)) {
    image_xscale = sign(Skeleton.x - x);
    var dis = point_distance(x, y, Skeleton.x, Skeleton.y) + Skeleton.hspd;
} else {
    dis = 1000;
}
if (dis > 160) {
    if (abs(hspd) < maxspd) {
        hspd += spd*image_xscale;
    }
    is_friction = false;
} else if (dis <= 160 && dis > 64 && alarm[2] <= 0){
    hspd = 0;
    image_index = 0;
    state = boss_attack_state;
} else if (dis <= 64) {
    hspd -= spd*image_xscale;
    image_speed = -.2;
}
move();
