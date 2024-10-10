// Script assets have changed for v2.3.0 see

//party data
global.party=
[
	{
		name:"MC",
		hp: 100,
		hpMax:100,
		strength:6,
		//sprites: {idle: spr_mc_idle_derecha, attack: spr_mc_caminar_derecha, defend: spr_mc_protect},
		//falta asignar spr de protect
		actions:[]
		}
	,
	{
		name:"Venado",
		hp: 100,
		hpMax:100,
		strength:6,
		sprites: {idle: spr_venado_idle_derecha, attack: spr_venado_caminar_derecha, cast: spr_venado_caminar_izquierda},
		actions:[]
		}
]


global.enemies=	
{
	mujer_blanca:{
		name:"Mujer de Blanco",
		hp: 100,
		hpMax:100,
		strength:7,
		sprites: {idle: spr_mujer_blanca_idle, attack: spr_mujer_blanca_fight},
		actions:[],
		xpValue:150,
		AIscript: function(){
		}
	}
}