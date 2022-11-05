// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



// Directional Pressed
function LeftPressed(){
	return keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_padl);
}
function RightPressed(){
	return keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_padr);
}
function UpPressed(){
	return keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_padu);
}
function DownPressed(){
	return keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_padd);
}

// Directional Checks
function LeftCheck(){
	return keyboard_check(ord("A")) || gamepad_button_check(0,gp_padl);
}
function RightCheck(){
	return keyboard_check(ord("D")) || gamepad_button_check(0,gp_padr);
}
function UpCheck(){
	return keyboard_check(ord("W")) || gamepad_button_check(0,gp_padu);
}
function DownCheck(){
	return keyboard_check(ord("S")) || gamepad_button_check(0,gp_padd);
}
function AllDirectionalChecks() {
	return LeftCheck() || RightCheck() ||UpCheck() || DownCheck();
}

// Buttons Pressed

function StartPressed(){
	return keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_start);
}
function SelectPressed(){
	return keyboard_check_pressed(vk_tab) || gamepad_button_check_pressed(0,gp_select);
}
function XButtonPressed(){
	return keyboard_check_pressed(ord("J")) || gamepad_button_check_pressed(0,gp_face3);
}
function YButtonPressed(){
	return keyboard_check_pressed(ord("I")) || gamepad_button_check_pressed(0,gp_face4);
}
function AButtonPressed(){
	return keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(0,gp_face1);
}
function BButtonPressed(){
	return keyboard_check_pressed(ord("L")) || gamepad_button_check_pressed(0,gp_face2);
}
function LButtonPressed(){
	return keyboard_check_pressed(ord("U")) || gamepad_button_check_pressed(0,gp_shoulderl);
}
function RButtonPressed(){
	return keyboard_check_pressed(ord("O")) || gamepad_button_check_pressed(0,gp_shoulderr);
}





