//#########################################
// TAL2221 dimensional data

include <MCAD/units.scad>
include <MMlib/colors.scad>

$fn = 100;

trim = 0.1;

// dimensional data from data sheet
CellLength = 47*mm;
CellHeight = 6*mm;
CellWidth = 12*mm;
CellMountingHoleRadius = 1.6*mm;
CellMountingHoleXOffset = 3.5*mm;
CellMountingHoleYOffset = 3*mm;
CellMountingHoleXSpacing = 40*mm;
CellBeamWidth = 33*mm;
CellBeamEndRadius = 2*mm;
 

module mounting_hole(x, y) {
    translate([x,y,-trim])
        cylinder(r=CellMountingHoleRadius, 
                 h = CellHeight+2*trim
                 );
}

module side_trim_block() {
    // place the round ends
    r = CellBeamEndRadius;
    x1 = (CellLength - CellBeamWidth)/2+r;
    x2 = CellLength - x1;
    translate([x1,0,-trim])
        cylinder(
                r=r, 
                h=CellHeight+2*trim
        );
    translate([x2,0,-trim])
        cylinder(
                r = r, 
                h = CellHeight+2*trim
             );
    // calculate size and position of joining block
    x = r;
    l = CellBeamWidth - 2*r;
    h = CellHeight+2*trim;
    translate([x1,-r,-trim])
        cube([l,2*r,h]);
}

module center_channel() {
r = (CellHeight-0.4)/2;
h = CellWidth + 2*trim;
rotate([-90,0,0]) cylinder(r = r, h = h);
translate([20,0,0])
    rotate([-90,0,0]) cylinder(r=r, h=h);
translate([0,0,-1.5]) cube([20,h,3]);

}
module load_cell() {
    color(METAL_Aluminium)
    difference() {
        
        // basic load cell block
        
        cube([CellLength, CellWidth, CellHeight]);
        
        // mounting holes
        x1 = CellMountingHoleXOffset;
        y1 = CellMountingHoleYOffset;
        x2 = x1;
        y2 = CellWidth-CellMountingHoleYOffset;
        x3 = CellLength - CellMountingHoleXOffset;
        y3 = y1;
        x4 = x3;
        y4 = y2;
        mounting_hole(x1,y1);
        mounting_hole(x2,y2);
        mounting_hole(x3,y3);
        mounting_hole(x4,y4);
        
        // trim sides
        side_trim_block();
        translate([0,CellWidth,0]) side_trim_block();
        
        // Add center channel
        translate([27/2,-trim,CellHeight/2]) center_channel();
   }

   // add ceramic layers
   r = CellBeamEndRadius;
   xc = (CellLength - CellBeamWidth)/2 + r;
   lc = CellLength - 2*xc;
   color("white")
  
        translate([xc,r,CellHeight])
        cube([lc,CellWidth-2*r, 1]);
        color("white")
        translate([xc,r,-1])
        cube([lc, CellWidth-2*r,1]);
   
}

load_cell();

