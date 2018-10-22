include <config.scad>

//$fn = 32;

union(){
    color("DimGray")
    difference(){
        
        union(){
        //servo body 
            hull(){
                translate([(servo_w/2-rad),(servo_l/2-rad), bottom_attach_carve_h])
                cylinder(r=rad, h=body_h);
                
                translate([-(servo_w/2-rad),(servo_l/2-rad), bottom_attach_carve_h])
                cylinder(r=rad, h=body_h);
                
                translate([(servo_w/2-rad-3.5),-(servo_l/2-rad), bottom_attach_carve_h])
                cylinder(r=rad, h=body_h);
                
                translate([-(servo_w/2-rad-3.5),-(servo_l/2- rad), bottom_attach_carve_h])
                cylinder(r=rad, h=body_h);
                
                translate([(servo_w/2-rad),-(servo_l/2-rad-3.5), bottom_attach_carve_h])
                cylinder(r=rad, h=body_h);
                
                translate([-(servo_w/2-rad),-(servo_l/2-rad-3.5), bottom_attach_carve_h])
                cylinder(r=rad, h=body_h);
            }
            
            //bottom ridges
            translate([0, servo_l/2 - 13.25/2 -5.6, bottom_attach_carve_h/2 + 1/2])
            cube([18.485, 13.25, bottom_attach_carve_h+1], center=true);
            
            translate([0, servo_l/2 - 13.25/2, bottom_attach_carve_h/2 + 1/2])
            cube([13.5, 13.25, bottom_attach_carve_h+1], center=true);
            
            //top  ridges
            translate([0, servo_l/2 - 14.2/2 -9.3625, servo_h - top_attach_carve_h/2])
            cube([19, 14.2, top_attach_carve_h], center=true);
            
            translate([0, servo_l/2 - 29/2, servo_h - top_attach_carve_h/2])
            cube([14, 29, top_attach_carve_h], center=true);
            
            
        }
        
        //Top holes to attach to servo
        translate([0, servo_l/2 - top_hole_l_offset - l_between_top_holes/2, servo_h - attach_screw_l]) {
            
            translate([(w_between_holes/2),-(l_between_top_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),-(l_between_top_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
                
            translate([(w_between_holes/2),(l_between_top_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),(l_between_top_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
            
        }
        
        //Bottom holes to attach to servo
        translate([0, servo_l/2 - bottom_hole_l_offset - l_between_bottom_holes/2, 0]) {
            
            translate([(w_between_holes/2),-(l_between_bottom_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),-(l_between_bottom_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
                
            translate([(w_between_holes/2),(l_between_bottom_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),(l_between_bottom_holes/2),0])
            cylinder(d=hole_dia, h=attach_screw_l);
            
        }
        
        //Carving for Top and bottom Horn
        translate([0, -(servo_l/2 - hub_offset), 0]) {
            
            //top
            translate([0, 0, servo_h - top_hub_carve_h])
            cylinder(r=hub_carve_r, h=top_hub_carve_h+2, $fn=64);
                
            translate([0, -5.46/2, servo_h - top_hub_carve_h/2 + 1/2])
            cube([servo_w+1, hub_r*2-5.46+1.4, top_hub_carve_h + 1], center=true);
        
            //bottom
    
            translate([0, 0, -1])
            cylinder(r=hub_carve_r, h=bottom_hub_carve_h+1, $fn=64);
                
            translate([0, -5.46/2, bottom_hub_carve_h/2 - 1/2])
            cube([servo_w+1, hub_r*2-5.46+1.4, bottom_hub_carve_h + 1], center=true);
            
            translate([0, 0, bottom_hub_carve_h/2 - 1/2])
            rotate([0, 0, 90])
            cube([servo_w+1, 13, bottom_hub_carve_h + 1], center=true);
                 
        }
        
        //carving for connectors on bottom (Needs to be finished the right depth)
        translate([0, servo_l/2 - 18.86 - 4.6/2, 9/2])
        cube([19, 4.6, 9], center=true);
    
        
        
        
    }
    
    //top horn
    color("DarkKhaki")
    difference(){
        
        translate([0, -(servo_l/2 - hub_offset), servo_h - top_hub_carve_h])
        cylinder(r=3.1, h=3.20, $fn=64);
        
        translate([0, -(servo_l/2 - hub_offset), servo_h - top_hub_carve_h + 1])
        cylinder(r=0.8, h=3.20, $fn=64);
        
        translate([0, -(servo_l/2 - hub_offset), servo_h - top_hub_carve_h + 0.5])
        for (x = [0 : 15 : 360]) {
            rotate([0, 0, x])
            translate([0, 3.3, 0])
            cylinder(r=0.5, h=3.20, $fn=4);
        }
    
    }
    
    //bottom horn
    color("DimGray")
    translate([0, -(servo_l/2 - hub_offset), 3.4 - 3.85])
    cylinder(r=3, h=3.85, $fn=64);

}