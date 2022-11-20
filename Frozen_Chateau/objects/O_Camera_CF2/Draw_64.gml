/// @description 

switch(state){
	case States.spawn:
		
		if(spawn_timer<15){
			draw_sprite_ext(spr_Black_Screen,0,0,0,global.settings.winscale,global.settings.winscale,0,-1,spawn_timer/10);
		} else {
			draw_sprite_ext(spr_Black_Screen,0,0,0,global.settings.winscale,global.settings.winscale,0,-1,1);
		}
	break;
	
	case States.follow_player:
	// Health bar
	draw_sprite_ext(spr_GUI_health_bar_fill,0,10*global.settings.winscale,10*global.settings.winscale, global.PlayerData.HP * global.settings.winscale,global.settings.winscale,0,-1,1);
	draw_sprite_ext(spr_GUI_health_bar_60,0,8*global.settings.winscale,8*global.settings.winscale,global.settings.winscale,global.settings.winscale,0,-1,1);
	// Stamina bar
	draw_sprite_ext(spr_GUI_Stamina_Bar_Fill,0,10*global.settings.winscale,18*global.settings.winscale, global.PlayerData.stamina * global.settings.winscale,global.settings.winscale,0,-1,1);
	draw_sprite_ext(spr_GUI_Stamina_Bar,0,8*global.settings.winscale,16*global.settings.winscale,global.settings.winscale,global.settings.winscale,0,-1,1);
	// Flask Count is just under Stamina
	draw_set_font(fDialogue_x3);
	var _posX = 10 * global.settings.winscale;
	var _posY = 26 * global.settings.winscale;
	draw_sprite_ext(spr_GUI_Flask,0,_posX, _posY, global.settings.winscale, global.settings.winscale,0,-1,1);
	draw_text_color(_posX+(10*global.settings.winscale), _posY+(4*global.settings.winscale), "x" + string(global.PlayerData.flask_count),c_black,c_black,c_black,c_black,1);
	// Key Count
	var _key_posX = 10 * global.settings.winscale;
	var _key_posY = 34 * global.settings.winscale;
	draw_sprite_ext(spr_GUI_Key,0,_key_posX, _key_posY, global.settings.winscale, global.settings.winscale,0,-1,1);
	draw_text_color(_key_posX+(10*global.settings.winscale), _key_posY+(4*global.settings.winscale), "x" + string(global.PlayerData.key_count),c_black,c_black,c_black,c_black,1);


	// Y_Button UI code
	var _Y_positionX = 160*global.settings.winscale;
	var _Y_positionY =  20*global.settings.winscale;
	var _Y_Text_positionX = 174*global.settings.winscale;
	var _Y_Text_positionY =  28*global.settings.winscale;
	draw_sprite_ext(spr_GUI_Y_Button_Template,0, _Y_positionX,_Y_positionY, global.settings.winscale,global.settings.winscale,0,-1,1);
	draw_set_font(fDialogue_x3);
	switch(global.PlayerInventory.equipped){
		case global.PlayerInventory.inventory[0]:
			global.PlayerInventory.index = 0;
			global.PlayerInventory.equipped = global.PlayerInventory.inventory[0];
			draw_sprite_ext(global.PlayerInventory.inventory[0].sprite, 0, _Y_positionX,_Y_positionY,global.settings.winscale,global.settings.winscale,0,-1,1);
			draw_text_color(_Y_Text_positionX,_Y_Text_positionY, "x" + string(global.PlayerInventory.inventory[0].ammo), c_black, c_black, c_black, c_black,1);
		break;
		case global.PlayerInventory.inventory[1]:
			global.PlayerInventory.index = 1;
			global.PlayerInventory.equipped = global.PlayerInventory.inventory[1];
			draw_sprite_ext(global.PlayerInventory.inventory[1].sprite, 0, _Y_positionX,_Y_positionY,global.settings.winscale,global.settings.winscale,0,-1,1);
			draw_text_color(_Y_Text_positionX,_Y_Text_positionY, "x" + string(global.PlayerInventory.inventory[1].ammo), c_black, c_black, c_black, c_black,1);
		break;
		case global.PlayerInventory.inventory[2]:
			global.PlayerInventory.index = 2;
			global.PlayerInventory.equipped = global.PlayerInventory.inventory[2];
			draw_sprite_ext(global.PlayerInventory.inventory[2].sprite, 0, _Y_positionX,_Y_positionY,global.settings.winscale,global.settings.winscale,0,-1,1);
		break;
		default:
		break;
	}
	// Y Button Recharge bar code.
	if(O_Player.use_equipped_timer > 0){
		var _Y_positionX_CD = 160*global.settings.winscale;
		var _Y_positionY_CD =  32*global.settings.winscale;
		var _bar_fill = (O_Player.max_use_equipped_timer - O_Player.use_equipped_timer)/3;
		draw_sprite(spr_Enemy_HP_Bar,0,_Y_positionX_CD,_Y_positionY_CD);
	}



	// L Button UI code.
	var _L_positionX = 128*global.settings.winscale;
	var _L_positionY =  16*global.settings.winscale;
	draw_sprite_ext(spr_GUI_L_Button,0, _L_positionX,_L_positionY-24, global.settings.winscale,global.settings.winscale,0,-1,1);
	var _L_ind = get_Prev_Equip_Item();
	switch(_L_ind){
		case 0:
			draw_sprite_ext(global.PlayerInventory.inventory[0].sprite,0, _L_positionX,_L_positionY, global.settings.winscale,global.settings.winscale,0,-1,1);
		break;
		case 1:
			draw_sprite_ext(global.PlayerInventory.inventory[1].sprite,0, _L_positionX,_L_positionY, global.settings.winscale,global.settings.winscale,0,-1,1);
		break;
		case 2:
			draw_sprite_ext(global.PlayerInventory.inventory[2].sprite,0, _L_positionX,_L_positionY, global.settings.winscale,global.settings.winscale,0,-1,1);
		break;
	}
	
	
	// R Button UI code.
	var _R_positionX = 192*global.settings.winscale;
	var _R_positionY =  16*global.settings.winscale;
	draw_sprite_ext(spr_GUI_R_Button,0, _R_positionX,_R_positionY-24, global.settings.winscale,global.settings.winscale,0,-1,1);
	var _R_ind = get_Next_Equip_Item();
	switch(_R_ind){
		case 0:
			draw_sprite_ext(global.PlayerInventory.inventory[0].sprite,0, _R_positionX,_R_positionY, global.settings.winscale,global.settings.winscale,0,-1,1);
		break;
		case 1:
			draw_sprite_ext(global.PlayerInventory.inventory[1].sprite,0, _R_positionX,_R_positionY, global.settings.winscale,global.settings.winscale,0,-1,1);
		break;
		case 2:
			draw_sprite_ext(global.PlayerInventory.inventory[2].sprite,0, _L_positionX,_R_positionY, global.settings.winscale,global.settings.winscale,0,-1,1);
		break;
	}
	break;
}




