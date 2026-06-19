var _playerX = obj_player.x, _playerY = obj_player.y;

global.mouseDir = floor((point_direction(_playerX, _playerY, mouse_x, mouse_y)+45)/90) mod 4;