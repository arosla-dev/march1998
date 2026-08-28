$modelname v_crossbow.mdl
$cd .
$cdtexture ./maps_8bit

$scale 1.0

$origin -4 .5 63.25 0 // *to move it back to center, the X-offset is -6

// whole body
$body body "crossbow_bow" reverse
$body body "crossbow_hand_beta"

$bodygroup "scope"
{
studio "crossbow_scope_bad"
studio "crossbow_scope"
}

$texturegroup "skinfamily"
{
	{ "GLOVE_handpak.bmp.bmp" "GLOVED_knuckle.bmp" "xbow_sleeve.bmp" "chrome1.bmp" }
	{ "GLOVE_handpak_yellow.bmp" "GLOVED_knuckle_yellow.bmp" "xbow_sleeve_yellow.bmp" "rubbergloveCHROME.bmp" }
}

$sequence idle1 "crossbow_idle1(simple)" loop fps 30
$sequence idle2 "crossbow_idle2(empty)" loop fps 30
$sequence fidget1 "crossbow_fidget1(flick)" fps 30
$sequence fidget2 "crossbow_fidget2(empty)" fps 30
$sequence fire1 "crossbow_fire1(standard)" fps 60
$sequence fire2 "crossbow_fire2(reload)" fps 30
$sequence fire3 "crossbow_fire3(empty)" fps 30
$sequence reload "crossbow_reload(fromempty)" fps 30
$sequence draw1 "crossbow_draw1(loaded)" fps 30
$sequence draw2 "crossbow_draw2(empty)" fps 30
$sequence holster1 "crossbow_holster1(loaded)" fps 30
$sequence holster2 "crossbow_holster2(empty)" fps 30
