$modelname models/v_357.mdl
$cd "."
$cdtexture maps_8bit

$scale 1

// whole body
$body gun "anims/python_gun"
$body hands "anims/python_bullets"
$body hands "anims/python_speedload"

$bodygroup "hands"
{
    studio "anims/python_dualhands(beta_hand)"
    studio "anims/python_dualhands(ivan_hand)"
}

$origin -1 -9 22

$attachment 0 "gun master" 0 -14 6 Y -1

$sequence idle1 "anims/python_idle1(simple)" loop fps 30
$sequence fidget1 "anims/python_idle2(hammer)" fps 30
$sequence fire1 "anims/python_fire1" fps 30 frame 9 45 { event 5001 0 "31" }
$sequence reload "anims/action" fps 36

//existing reload is for later mesh
$sequence holster "anims/python_putaway" fps 30
$sequence draw "anims/python_bringup" frame 16 60 fps 45
$sequence idle2 "anims/python_idle4(startled)" loop fps 30
$sequence idle3 "anims/python_idle3(beauty)" loop fps 30
