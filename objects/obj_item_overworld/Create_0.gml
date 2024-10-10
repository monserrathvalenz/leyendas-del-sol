item = global.item_list.key; 

dialogue = [
"Las llaves del carro de Rocío, quizá me sean útiles más tarde.",
"Este carro ha sido testigo de tantas aventuras, pero ahora necesito más que solo ruedas y gasolina;...",
"...debo invocar el venado azul para encontrar la verdad."
];

dialogue_index = 0;

face_frames = [
    0, // Frame para el primer diálogo
    5, // Frame para el segundo diálogo
    0  // Frame para el tercer diálogo
];

// Si la llave ya ha sido recogida, destruir la instancia
if (global.key_collected) {
    instance_destroy();
}
