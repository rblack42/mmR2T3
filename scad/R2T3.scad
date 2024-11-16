include <V-slot_lib.scad>
include <MCAD/units.scad>
include <MCAD/materials.scad>
include <MCAD/stepper.scad>
include <timing_belts.scad>

module stretch_belt(length, diameter) {
    color("aquamarine") {
        belt_len(tT2_5,10, length);
        translate([length,30,0]) rotate([0,0,180]) belt_len(tT2_5,10,length);
        translate([ 0,30,0]) rotate([0,0,180]) belt_angle(tT2_5,15,10,180);
        translate([length,0,0]) rotate([0,0,0]) belt_angle(tT2_5,15,10,180);
  }
}


module R2T3() {
	rail_length = 1500*mm;
    translate([6*inch,3*inch,1*inch])
	rotate([0,90,0])
        color(Aluminum) V_slot("20x40", rail_length);

    color(Oak) cube([6*12*inch, 6*inch, 1*inch]);
    
    motor(Nema17, NemaMedium, false, [5*inch, 3.25*inch, 1.875*inch], [-90,0,0]);
    
    translate([3.25*inch, 3*inch,1.5*inch])rotate([90,0,0]) stretch_belt(500);
}

R2T3();
