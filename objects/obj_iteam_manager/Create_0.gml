depth = -9999;

// Crear la fuente personalizada
global.TEXTBOX_FONT = font_add_sprite_ext(spr_textbox_font, "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzáéíóú0123456789¡!¿?()\"'.,-/ü|", true, 0);

// Constructor del ítem
function create_item(_name, _desc, _spr) constructor {
    name = _name;
    description = _desc;
    sprite = _spr; 	
}



// Crear la lista de ítems
global.item_list = {
    key: new create_item(
        "Llave",
        "Son las llaves del carro de Rocío!",
        spr_llave
    ),
	apple: new create_item(
        "  Manzana",
        "Fruta del refrigerador",
        spr_apple 
    )
};



// Crear el inventario
inv = array_create(0);
selected_item = -1;

// Configuración para dibujar y controlar el mouse
sep = 16;
screen_bord = 16;

// Control para verificar si la llave fue recogida
if (!variable_global_exists("key_collected")) {
    global.key_collected = false;
}
