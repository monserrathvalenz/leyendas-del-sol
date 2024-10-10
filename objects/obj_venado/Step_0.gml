/// @mov del venado
// You can write your code in this editor

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
space_key = keyboard_check(vk_space);

//get xspeed and yspeed
xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

//set sprite
mask_index = sprite[DOWN]

if yspeed == 0
{
if xspeed > 0 {face = RIGHT};
if xspeed < 0 {face = LEFT};
}


if xspeed == 0
{
if yspeed > 0 {face = DOWN};
if yspeed < 0 {face = UP};
}

sprite_index = sprite[face];

//collisions
if place_meeting(x + xspeed, y, obj_text) == true
    {
        xspeed = 0;
    }

if place_meeting(x, y + yspeed, obj_text) == true
    {
        yspeed = 0;
    }

//move the player
x += xspeed;
y += yspeed;


//animate
if xspeed == 0 && yspeed == 0 
{
    switch(face) {
        case RIGHT:
            sprite_index = sprite[IDLE_RIGHT];  // Animación idle derecha
            break;
        case LEFT:
            sprite_index = sprite[IDLE_LEFT];   // Animación idle izquierda
            break;
        case UP:
            sprite_index = sprite[IDLE_UP];     // Animación idle arriba
            break;
        case DOWN:
            sprite_index = sprite[IDLE_DOWN];   // Animación idle abajo
            break;
    }
}