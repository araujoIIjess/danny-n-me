///@description HUD DO JOGADOR

//ESCALA DOS SPRITES
//VALOR PELO QUAL SERÃO MULTIPLICADOS OS SPRITES NA HUD
var _escala = 3;
//ALTURA DO SPRITE
//MULTIPLICA-SE POR 3 POIS É O VALOR DA ESCALA
var _sprA = sprite_get_height(spr_PlayerHud) * _escala;
//ALTURA DA TELA
var _guiA = display_get_gui_height();
//LUGAR EM QUE VAI FICAR A GUI
var _hudA = _guiA - _sprA;

var _playerLevel = obj_player.player_level;

var _maxVida = obj_player.max_vida[_playerLevel];
var _vida = obj_player.vida;

var _maxStamina = obj_player.max_stamina[_playerLevel];
var _stamina = obj_player.stamina;

//BARRA DE STAMINA
//O y É _hudA + 24 POIS PARA DESENHAR O SPRITE DA ESTAMINA SE DESCEM 8 PIXEIS NO SPRITE DO HUD
//E MULTIPLICA-SE O 8 POR 3, QUE É A ESCALA
draw_sprite_ext(spr_playerHud_stamina, 0, 0, _hudA + 24, (_stamina/_maxStamina)*_escala, _escala, 0, c_white, 1);

//BARRA DE VIDA
draw_sprite_ext(spr_playerHud_vida, 0, 0, _hudA, (_maxVida/_vida)*_escala, _escala, 0, c_white, 1);

//HUD
draw_sprite_ext(spr_PlayerHud, 0, 0, _hudA, _escala, _escala, 0, c_white, 1);
