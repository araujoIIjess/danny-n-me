#macro MOUSEDIR floor((point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)+45)/90) mod 4
//ATIVAÇÃO DO DEBUGMODE
//#macro DEBUGMODE keyboard_check_pressed(vk_tab)