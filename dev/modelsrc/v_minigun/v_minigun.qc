$modelname "v_minigun.mdl"
$cd ".\"
$cdtexture ".\maps_8bit"
$scale 1.0
$cliptotextures


$bbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$cbox 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$eyeposition 0.000000 0.000000 0.000000


//reference mesh(es)
$body "body" "minigun"

$bodygroup "hands"
{
    studio "minigun_hev_hands"
    studio "minigun_ivan_hands"
}

// 1 attachment(s)
$attachment 0 "Gauss Master" 26.000000 -1.000000 0.000000

// 2 hit box(es)
$hbox 0 "Gauss Master" -7.870000 -5.000000 -5.450000 16.980000 3.700000 2.680000
$hbox 0 "Spinner" -3.020000 -1.750000 -2.480000 0.000000 2.550000 2.480000

// 11 animation sequence(s)
$sequence "idle" "smd\idle" fps 15 loop 
$sequence "idle2" "smd\idle2" fps 15 loop 
$sequence "gentleidle" "smd\gentleidle" fps 15 loop 
$sequence "stillidle" "smd\stillidle" fps 15 loop 
$sequence "draw" "smd\draw" fps 25 
$sequence "holster" "smd\holster" fps 45 
$sequence "spinup" "smd\spinup" fps 30 loop 
$sequence "spindown" "smd\spindown" fps 14 loop 
$sequence "spinidle" "smd\spinidle" fps 30 loop 

// End of QC script.
