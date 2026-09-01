// Created by Crowbar 0.74

$modelname "g_gman.mdl"
$cd "."
$cdtexture "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "g_gman"
}
$bodygroup "studio"
{
	studio "gman_sandwich"
}

$flags 0


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bip01 Pelvis" -7.33 -6.37 -3.894398 1.362617 1.87 3.894398
$hbox 0 "Bip01 L Leg" 0 -5.23 -3.46 22.18 2.79 3.65
$hbox 0 "Bip01 L Leg1" 0 -2.65 -1.5 19.43 3.92 3.27
$hbox 0 "Bip01 L Foot" -0.03 -1.89 -2.08 2.56 7.61 2.53
$hbox 0 "Bip01 R Leg" 0 -5.22 -3.08 22.190001 2.65 3.94
$hbox 0 "Bip01 R Leg1" 0 -2.68 -2.69 19.09 3.99 2.82
$hbox 0 "Bip01 R Foot" -0.04 -1.87 -1.75 2.54 7.78 2.19
$hbox 0 "Bip01 Spine" 0 -4.69 -5.94 5.062719 2.87 5.59
$hbox 0 "Bip01 Spine2" 0 -5.03 -7.46 5.062715 4.45 7.34
$hbox 0 "Bip01 Spine3" 0 -3.55 -2.54 5.063678 3.8 1.65
$hbox 0 "Bip01 Neck" -0.33 -2.52 -2.93 3.524431 2.98 2.59
$hbox 0 "Bip01 Head" -0.22 -3.45 -2.89 8.12 4.97 2.58
$hbox 0 "Bip01 L Arm" 0 -1.83 -3.72 7.13 4.13 0.93
$hbox 0 "Bip01 L Arm1" 0 -1.9 -2.73 12.78 2.84 1.62
$hbox 0 "Bip01 L Arm2" 0 -3.17 -1.7 10.33 2.84 1.83
$hbox 0 "Bip01 L Hand" 0 -0.7 -1.889931 3.879428 0.69 1.59
$hbox 0 "Bip01 L Finger2" 0 -0.24 -1.09 1.363039 0.79 1.86
$hbox 0 "Bip01 R Arm" 0 -1.86 -1.26 7.37 4.14 3.47
$hbox 0 "Bip01 R Arm1" 0 -3.14 -1.77 13.69 2.99 2.63
$hbox 0 "Bip01 R Arm2" 0 -0.81 -1.69 10.66 3.13 1.86
$hbox 0 "Bip01 R Hand" -0.75 -0.8 -8.8 15.5 1.92 7.2
$hbox 0 "Bone03" -1.23 -0.25 -7.22 5.69 10.13 7.11

$controller 0 "Bip01 Head" XR -60 60
$controller Mouth "Dummy25" XR 0 30

$sequence "idle01" {
	"g_gman_anims\idle01"
	ACT_IDLE 4
	fps 13
	loop
}
$sequence "idlebrush" {
	"g_gman_anims\idlebrush"
	ACT_IDLE 1
	fps 18
	loop
}
$sequence "idlelook" {
	"g_gman_anims\idlelook"
	ACT_IDLE 1
	fps 14
	loop
}
$sequence "walk" {
	"g_gman_anims\walk"
	ACT_WALK 1
	{ event 1004 3 "common/npc_step1.wav" }
	{ event 1004 13 "common/npc_step3.wav" }
	fps 22
	loop
	LX
}
$sequence "run" {
	"g_gman_anims\run"
	ACT_RUN 1
	{ event 1004 11 "common/npc_step2.wav" }
	{ event 1004 25 "common/npc_step4.wav" }
	fps 34
	loop
	LX
}
$sequence "yes" {
	"g_gman_anims\yes"
	fps 16
}
$sequence "no" {
	"g_gman_anims\no"
	fps 14
}
$sequence "bigno" {
	"g_gman_anims\bigno"
	fps 18
}
$sequence "bigyes" {
	"g_gman_anims\bigyes"
	fps 18
}
$sequence "listen" {
	"g_gman_anims\listen"
	fps 14
}
$sequence "lookdown" {
	"g_gman_anims\lookdown"
	fps 14
	loop
}
$sequence "lookdown2" {
	"g_gman_anims\lookdown2"
	fps 14
	loop
}
