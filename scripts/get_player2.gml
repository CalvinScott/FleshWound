/*
* get_player2()
* Assigns keyboard and gamepad inputs to player two's movements
*/ 

// Player 2

// Movements
up = keyboard_check(ord('vk_up'));
down = keyboard_check(ord('vk_down'));
left = keyboard_check(ord('vk_left'));
right = keyboard_check(ord('vk_right'));

// Actions
special1 = keyboard_check(ord('vk_numpad8'));
special2 = keyboard_check(ord('vk_numpad9'));
attack = keyboard_check(ord('vk_numpad5'));
block = keyboard_check(ord('vk_numpad6'));
