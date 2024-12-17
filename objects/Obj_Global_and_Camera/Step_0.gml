//Código feito por: Peyton Burnham
if !instance_exists(Obj_Player) exit;

var camWidth = camera_get_view_width(view_camera[0]);
var camHeight = camera_get_view_height(view_camera[0]);

finalCamX += ((Obj_Player.x - camWidth/2) - finalCamX) * camTrailSpeed;
finalCamY += ((Obj_Player.y - camHeight/2) - finalCamY) * camTrailSpeed;

camera_set_view_pos(view_camera[0], finalCamX, finalCamY);




