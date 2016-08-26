///camera_follow_skeleton_state()
if (instance_exists(Skeleton)) {
    var targetx = Skeleton.x+(Skeleton.image_xscale*32); 
    var targety = Skeleton.y;
} else {
    var targetx = SkeletonStats.lastx;
    var targety = SkeletonStats.lasty;
}
camera_move_to_target(targetx, targety, .2);
