// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_Next_Equip_Item() {
	var _inv_arr = global.PlayerInventory.inventory;
	var _len = array_length(_inv_arr);
	var _ind = global.PlayerInventory.index;
	for(var i = _ind+1; i < _len; i++){
		if(_inv_arr[i].acquired){
			return i;
		}
	}
	return 0;	
}

function get_Prev_Equip_Item(){
	var _inv_arr = global.PlayerInventory.inventory;
	var _len = array_length(_inv_arr);
	var _ind = global.PlayerInventory.index;
	if (_ind == 0) _ind = _len;
	for(var i = _ind-1; i > 0; i--){
		if(_inv_arr[i].acquired){
			return i;
		}
	}
	return 0;	
}

function set_Equipped_Item_Next(){
	var _next_ind = get_Next_Equip_Item();
	global.PlayerInventory.index= _next_ind;
	global.PlayerInventory.equipped= global.PlayerInventory.inventory[_next_ind];
}

function set_Equipped_Item_Prev(){
	var _prev_ind = get_Prev_Equip_Item();
	global.PlayerInventory.index= _prev_ind;
	global.PlayerInventory.equipped= global.PlayerInventory.inventory[_prev_ind];
}
