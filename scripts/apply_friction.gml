///apply_friction(amount)
if (!is_friction) exit;
var amount = argument[0];
if (hspd != 0) {
    if (abs(hspd) > amount) {
        if (hspd > 0) {
            hspd -= amount;
        } else {
            hspd += amount;
        }
    } else {
        hspd = 0;
    }
}
