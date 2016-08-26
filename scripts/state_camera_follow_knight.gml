///camera_follow_skeleton_state()
if (instance_exists(Knight)) {
    var targetx = Knight.x+(Knight.image_xscale*32); 
    var targety = Knight.y;
} else {
    var targetx = KnightStats.lastx;
    var targety = KnightStats.lasty;
}
camera_move_to_target(targetx, targety, .2);
