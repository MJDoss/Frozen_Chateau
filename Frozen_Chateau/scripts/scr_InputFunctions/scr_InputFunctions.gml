// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function StartPressed(){
	return keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0,gp_start);
}


function scr_InputFunctions(){

}