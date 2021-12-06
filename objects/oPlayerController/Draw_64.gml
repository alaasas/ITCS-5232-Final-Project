/// @description Draw score , health bar , and lives

//draw score
draw_set_halign(fa_left)
draw_text(55, 55, "Player's Score: " + string(score))

//draw lives
for (var i= 0; i< lives ;i++)
{
	draw_sprite(slife,0,(800+40*i),35)
}

//draw health bar 
draw_set_halign(fa_left)
draw_sprite(slife,0,1260, 40);
draw_healthbar(1300, 45, 1500, 22, health,c_black,c_red,c_lime,0,true,true);

//draw Level name

var text = room_get_name(room) 
switch(text)
{
    case "Level1": draw_set_halign(fa_left);draw_text(500, 55, "Level: 1" ); break;
   
    case "Level2": draw_set_halign(fa_left);draw_text(500, 55, "Level: 2" ); break;
	
	case "Level3": draw_set_halign(fa_left);draw_text(500, 55, "Level: 3" ); break;
   
   
    default: break;
}