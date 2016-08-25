///enemy_chase_state
is_friction = true;
sprite_index = spr_knight_walk;
image_speed = .2;
if (instance_exists(Skeleton)) {
    image_xscale = sign(Skeleton.x - x);
    var dis = point_distance(x, y, Skeleton.x, Skeleton.y) + Skeleton.hspd;
} else {
    dis = 100;
}
if (dis > 48) {
    if (abs(hspd) < maxspd) {
        hspd += spd*image_xscale;
    }
    is_friction = false;
} else {
    hspd = 0;
    image_index = 0;
    state = enemy_attack_state;
}
move();
