/// @desactiva instances
instance_deactivate_all(true);

units=[];

//loop de los enemigos
for (var i =0; i <array_length(enemies);i++){
	unidades_enemigo[i]=instance_create_depth(x+400+(i*10),y+150+(i*20),depth-10, obj_battle_unit, enemies[i]);
	array_push(units,unidades_enemigo[i]);
}

//loop de los heroes
for (var i =0; i <array_length(global.party);i++){
	unidades_party[i]=instance_create_depth(x+70+(i*10),y+150+(i*30),depth-10, obj_battle_unit, global.party[i]);
	array_push(units,unidades_party[i]);
}
