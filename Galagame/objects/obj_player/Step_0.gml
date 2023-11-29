//iniciando variaveis
var right, left, jump, attack;
var chao = place_meeting(x, y + 1 ,obj_block);

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = keyboard_check_pressed(ord("W"));


//codigo de movimentacao
velh = (right - left) * max_velh;


//aplicando gravidade
if (!chao)
{	
	if (velv < max_velv * 2)
	velv += GRAVIDADE * massa;
}
else //pulando se eu estou no chao
{
	if (jump)
	{
		velv = -max_velv;	
	}
}


//iniciando a maquina de estados
switch(estado)
{
	case "parado":
	{
		//comportamento do estado
		sprite_index = spr_player_idle;
		
		
		//condicao de troca do estado
		//movendo
		if (right || left)
		{
			estado = "movendo";
		}
		
		break;
	}
	
	case "movendo":
	{
		//comportamento do estado de movimento
		sprite_index = spr_player_run
		
		//condicao de troca de estado
		//Parado
		if (abs(velh)< .1)
		{
			estado = "parado";
			velh = 0;
		}
		break;	
	}
}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		