if (transition_direction == 0) {
    // Fade in (becoming visible)
    transition_alpha = lerp(transition_alpha, 0, transition_speed);
    if (transition_alpha <= 0.01) {
        transition_alpha = 0;
        // Remove the transition object after fade in completes
        instance_destroy();
    }
} else if (transition_direction == 1) {
    // Fade out (becoming invisible)
    transition_alpha = lerp(transition_alpha, 1, transition_speed);
    if (transition_alpha >= 0.99) {
        transition_alpha = 1;
        // Change the room once fade out is complete
        room_goto(next_room);
        transition_direction = 0; // Prepare for fade in
    }
}
