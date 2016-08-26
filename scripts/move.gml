///move
// Horizontal collisions
if (place_meeting(x+hspd, y, SolidParent)) {
    while (!place_meeting(x+sign(hspd), y, SolidParent)) {
        x+=sign(hspd);
    }
    hspd = 0;
}
x+=hspd;

// Vertical collisions
if (place_meeting(x, y+vspd, SolidParent)) {
    while (!place_meeting(x, y+sign(vspd), SolidParent)) {
        y+=sign(vspd);
    }
    vspd = 0;
}
y+=vspd;
