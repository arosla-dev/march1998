// Created by Crowbar 0.74

$modelname "hassault.mdl"
$cd "."
$cdtexture "."
$cliptotextures
$scale 1.0

$bodygroup "studio"
{
	studio "reference(final)"
}
$bodygroup "studio"
{
	studio "gunreference"
	blank
}

$flags 0

$eyeposition 0 0 70


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "Bip01 Pelvis" -5.32 -5.39 -8.11 1.420174 4.84 8.38
$hbox 0 "Bip01 L Leg" 0 -5.78 -5.32 20.288166 4.68 3.59
$hbox 0 "Bip01 L Leg1" 0 -4.08 -3.87 20.28817 4.89 4.45
$hbox 0 "Bip01 L Foot" -1.79 -2.6 -2.31 1.83 5.883568 2.72
$hbox 0 "Bip01 L Toe02" 0 0 -1.97 2.22 1.87 2.24
$hbox 0 "Bip01 R Leg" 0 -5.78 -3.86 20.288166 4.68 4.67
$hbox 0 "Bip01 R Leg1" 0 -4.08 -4.72 20.28817 4.89 3.6
$hbox 0 "Bip01 R Foot" -1.79 -2.58 -2.98 1.83 5.883568 1.93
$hbox 0 "Bip01 R Toe02" 0 0 -2.52 2.3 1.87 1.6
$hbox 0 "Bip01 Spine" -1.87 -10.01 -8.81 10.549848 7.26 8.93
$hbox 0 "Bip01 Spine1" -0.39 -13.22 -9.01 11.54 1.78 9.6
$hbox 0 "Bip01 Head" 0 -4.46 -3.39 10.21 5.25 3.82
$hbox 0 "Bip01 L Arm" 0 -6.47 -7.33 9.06 6.81 2.61
$hbox 0 "Bip01 L Arm1" 0 -4.16 -4.13 15.19 3.07 2.98
$hbox 0 "Bip01 L Arm2" 0 -1.59 -2.52 10.071036 2.42 2.78
$hbox 0 "Bip01 L Hand" 0 -2.44 -2.34 5.23 2.96 1.93
$hbox 0 "Bip01 R Arm" 0 -6.47 -2.63 8.95 6.81 7.28
$hbox 0 "Bip01 R Arm1" 0 -3.63 -2.78 15.1 2.8 3.98
$hbox 0 "Bip01 R Arm2" 0 -1.28 -2.46 10.071033 2.65 2.52
$hbox 0 "Bip01 R Hand" 0 -1.87 -2.23 5.472871 3 4.403636
$hbox 0 "20mm cannon" -6.52 -28.74 0 6.52 6.68 4.55

$controller 0 "Bip01 Head" XR 0 360

$sequence "idle" {
	"hassault_anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}
$sequence "idle" {
	"hassault_anims\idle_2"
	ACT_IDLE 1
	fps 30
	loop
}
$sequence "creeping_walk" {
	"hassault_anims\creeping_walk"
	ACT_WALK 1
	{ event 13 22 }
	{ event 13 52 }
	fps 30
	loop
	LX
}
$sequence "turn" {
	"hassault_anims\turn"
	ACT_TURN_LEFT 1
	fps 30
}
$sequence "turn" {
	"hassault_anims\turn_2"
	ACT_TURN_RIGHT 1
	fps 30
}
$sequence "attack" {
	"hassault_anims\attack"
	ACT_RANGE_ATTACK1 1
	{ event 1 1 }
	{ event 1 8 }
	{ event 1 15 }
	{ event 1 22 }
	{ event 1 29 }
	{ event 1 36 }
	{ event 1 43 }
	{ event 1 50 }
	{ event 1 57 }
	fps 30
	loop
}
$sequence "small_pain" {
	"hassault_anims\small_pain"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "small_pain" {
	"hassault_anims\small_pain_2"
	ACT_SMALL_FLINCH 2
	fps 30
	X Y
}
$sequence "die_backwards" {
	"hassault_anims\die_backwards"
	fps 30
}
$sequence "die_crumple" {
	"hassault_anims\die_crumple"
	ACT_DIESIMPLE 1
	fps 30
}
$sequence "die_violent" {
	"hassault_anims\die_violent"
	fps 30
}
$sequence "heavy_ambush" {
	"hassault_anims\heavy_ambush"
	fps 20
}
$sequence "quadpunch" {
	"hassault_anims\quadpunch"
	ACT_MELEE_ATTACK1 1
	{ event 10 8 }
	{ event 12 36 }
	{ event 10 39 }
	{ event 11 62 }
	fps 30
}
$sequence "doublepunch" {
	"hassault_anims\doublepunch"
	fps 30
}
