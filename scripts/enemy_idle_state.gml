///enemy_chase_state
is_friction = true;
sprite_index = spr_knight_idle;
image_speed = .1;
apply_gravity();
move();
if (instance_exists(Skeleton)) {
    image_xscale = sign(Skeleton.x - x);
    var dis = point_distance(x, y, Skeleton.x, Skeleton.y);
} else {
    var dis = 100;
}
if (dis <= 150) {
    instance_create(x+(64*-image_xscale), y, Crow);
    state = enemy_chase_state;
}
