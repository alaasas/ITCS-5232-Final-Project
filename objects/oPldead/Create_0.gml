hsp=2
vsp =-3 
grv = 0.2;
done =0;
image_speed=0;
image_index =0;
game_set_speed(30,gamespeed_fps);
with (oCamera) follow = other.id; //let the camera follow the dead player
instance_destroy(oGun2);