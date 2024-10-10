// Step Event
// Verifica si la animación ha llegado al último frame
if (image_index >= sprite_get_number(sprite_index) - 3) {
   var transition = instance_create_layer(0, 0, "Instances", obj_transition);
transition.next_room = room_main; // Set the next room you want to go to
transition.transition_direction = 1; // Start fade out
}

