event_inherited();

space = keyboard_check(ord("W")) or keyboard_check(vk_space);
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);
shift = keyboard_check(vk_shift);
ctrl = keyboard_check(vk_control);

mouse1 = mouse_check_button_pressed(mb_left);
mouse2 = mouse_check_button(mb_right);

keyInventory = keyboard_check_pressed(ord("E"));
keyDrop =  keyboard_check(ord("Q"));
keyChangeHands = keyboard_check_pressed(ord("F"));



//Melhorar esse sistema de distancia dos blocos
if distance_to_point(mouse_x,mouse_y) < global.distanceToBreakBlocks
{
	if mouse_check_button(mb_right)
	{
		if global.world[int64(mouse_y/16)][int64(mouse_x/16)] = ""
		{
			whereToPlaceBlock("definirLayer", "grass", 1, 1, 1, 1)
		}
	}
	
	
}