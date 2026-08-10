

$modelname models/v_squeak.mdl
$cd .
$cdtexture ./maps_8bit

$scale 1.0

$origin 0 0 0

// whole body
$body body "SQUEAK_Template_Biped(Weapon)1"

$bodygroup body
{
    studio "SQUEAK_Template_Biped(Hand_beta)1"
    studio "SQUEAK_Template_Biped(Hand_ivan)1"
}

$texturegroup eye
{
{ "SQK_Eye1.bmp" } { "SQK_Eye1(Blink2).bmp" } { "SQK_Eye1(Blink3).bmp" }
}

$sequence idle1 "SQUEAK_Idle1(Subtle)" loop fps 16
$sequence fidgetfit "SQUEAK_Fidget1(Fit)" fps 16
$sequence fidgetnip "SQUEAK_Fidget1(nip)" fps 16
$sequence down "SQUEAK_Down1" fps 16
$sequence up "SQUEAK_Up1" fps 30
$sequence throw "SQUEAK_Throw1" fps 24 
$sequence throw "SQUEAK_Throw2" fps 24
$sequence ref "SQUEAK_Template_Biped(Weapon)1" fps 24