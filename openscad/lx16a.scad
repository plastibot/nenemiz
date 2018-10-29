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
            translate([0, servo_l/2 - bottom_wider_ridge_l/2 - bottom_wider_ridge_offset, bottom_attach_carve_h/2 + 1/2])
            cube([bottom_wider_ridge_w, bottom_wider_ridge_l, bottom_attach_carve_h+1], center=true);
            
            translate([0, servo_l/2 - bottom_wider_ridge_l/2, bottom_attach_carve_h/2 + 1/2])
            cube([bottom_narrow_ridge_w, bottom_wider_ridge_l, bottom_attach_carve_h+1], center=true);
            
            //top  ridges
            translate([0, servo_l/2 - top_wider_ridge_l/2 -top_wider_ridge_offset, servo_h - top_attach_carve_h/2])
            cube([top_wider_ridge_w, top_wider_ridge_l, top_attach_carve_h], center=true);
            
            translate([0, servo_l/2 - 29.65/2, servo_h - top_attach_carve_h/2])
            cube([top_narrow_ridge_w, 29.65, top_attach_carve_h], center=true);
            
            
        }
        
        //Top holes to attach to servo
        translate([0, servo_l/2 - top_hole_l_offset - l_between_top_holes/2, servo_h - attach_screw_l]) {
            
            translate([(w_between_holes/2),-(l_between_top_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),-(l_between_top_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([(w_between_holes/2),(l_between_top_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),(l_between_top_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
            
        }
        
        //Bottom holes to attach to servo
        translate([0, servo_l/2 - bottom_hole_l_offset - l_between_bottom_holes/2, 0]) {
            
            translate([(w_between_holes/2),-(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),-(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([(w_between_holes/2),(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
            
        }
        
        //Carving for Top and Bottom Horn
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
        
        //carving for connectors on bottom
        translate([0, servo_l/2 - 18.86 - connectors_l/2, connectors_depth/2])
        cube([connectors_w, connectors_l, connectors_depth], center=true);
    
        
        
        
    }
    
    //top horn
    color("DarkKhaki")
    difference(){
        
        translate([0, -(servo_l/2 - hub_offset), servo_h - top_hub_carve_h])
        cylinder(d=top_horn_d, h=top_horn_h, $fn=64);
        
        translate([0, -(servo_l/2 - hub_offset), servo_h - top_hub_carve_h + 1])
        cylinder(d=horn_hole_d, h=top_horn_h, $fn=64);
        
        translate([0, -(servo_l/2 - hub_offset), servo_h - top_hub_carve_h + 0.5])
        for (x = [0 : 15 : 360]) {
            rotate([0, 0, x])
            translate([0, 3.3, 0])
            cylinder(r=0.5, h=3.20, $fn=4);
        }
    
    }
    
   
    //bottom horn
    color("DimGray")
    difference(){
        
        translate([0, -(servo_l/2 - hub_offset), bottom_hub_carve_h - bottom_horn_h])
        cylinder(d=bottom_horn_d, h=bottom_horn_h, $fn=64);
        
        translate([0, -(servo_l/2 - hub_offset), bottom_hub_carve_h - bottom_horn_h - 1])
        cylinder(r=0.8, h=bottom_horn_h, $fn=64);
        
    }
    
    
    //wire connector
    color("white")
    difference(){
        
        translate([0, servo_l/2 - 18.86 - connectors_l/2, 5 + connectors_h/2])
        cube([19, connectors_l, connectors_h], center=true);
        
        translate([9.25/2, servo_l/2 - 18.86 - connectors_l/2, 5 + connectors_h/2 -1])
        cube([8.5, 3.6, connectors_h], center=true);
        
        translate([-9.25/2, servo_l/2 - 18.86 - connectors_l/2, 5 + connectors_h/2 -1])
        cube([8.5, 3.6, connectors_h], center=true);
        
        
    }

}