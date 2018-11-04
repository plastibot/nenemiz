include <config.scad>
include <lx16a.scad>

wall = 1;

//servo_jacket();
//n_40a();

//servo_arm();
//servo_leg();

rotate([0,-90,90])
mock_up();

module mock_up(){
    
    translate([0, -41, 0])
    servo_leg();
    
    translate([0, 41, 0])
    mirror([0, 1, 0])
    servo_leg();
    
    translate([180, 70, 0])
    rotate([0,180, -90])
    mirror([1, 0, 0])
    servo_arm();
    
    translate([180, -70, 0])
    rotate([0, 180, -90])
    //mirror([1, 0, 0])
    servo_arm();
    
    
}

module servo_jacket(){
    difference(){
        
        translate([0, 0, 0])
        cube([servo_w + wall * 2, servo_l + wall * 2, servo_h + wall * 2], center=true);
        
        translate([0, 0, 0])
        cube([servo_w, servo_l, body_h], center = true);
        
        //carving for top and bottom horn
        color("green")
        translate([0, -(servo_l/2 - hub_offset), 0]) {
            
            //top
            translate([0, 0, servo_h/2 - top_hub_carve_h - 1])
            cylinder(r=hub_carve_r, h=top_hub_carve_h+4, $fn=64);
        
            //bottom        
            translate([0, 0, -servo_h/2 - wall - 1])
            cylinder(r=hub_carve_r, h=bottom_hub_carve_h+1, $fn=64);
        
            translate([0, 0, -servo_h/2 + bottom_hub_carve_h/2 - wall])
            rotate([0, 0, 90])
            cube([servo_w+1, 13, bottom_hub_carve_h + 1], center=true);
            
            //side
            translate([0, -5.46/2 - 1, 0 ])
            cube([servo_w + wall*2 + 1, hub_r*2-5.46+2.4, servo_h + wall * 2 + 2], center=true);
                 
        }
        
        //Top holes to attach to servo
        translate([0, servo_l/2 - top_hole_l_offset - l_between_top_holes/2, servo_h/2 + wall * 2 - attach_screw_l]) {
            
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
        translate([0, servo_l/2 - bottom_hole_l_offset - l_between_bottom_holes/2, -servo_h/2 - wall *2]) {
            
            translate([(w_between_holes/2),-(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),-(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([(w_between_holes/2),(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
                
            translate([-(w_between_holes/2),(l_between_bottom_holes/2),0])
            cylinder(d=att_hole_dia, h=attach_screw_l);
            
        }
        
        translate ([0, 0, -servo_h/2]) {
            
            //bottom ridges
            translate([0, servo_l/2 - bottom_wider_ridge_l/2 - bottom_wider_ridge_offset, bottom_attach_carve_h/2 + 1/2])
            cube([bottom_wider_ridge_w, bottom_wider_ridge_l, bottom_attach_carve_h+1], center=true);
            
            translate([0, servo_l/2 - bottom_wider_ridge_l/2, bottom_attach_carve_h/2 + 1/2])
            cube([bottom_narrow_ridge_w, bottom_wider_ridge_l, bottom_attach_carve_h+1], center=true);
            
            //top  ridges
            translate([0, servo_l/2 - top_wider_ridge_l/2 -top_wider_ridge_offset, servo_h - top_attach_carve_h/2 - wall/2])
            cube([top_wider_ridge_w, top_wider_ridge_l, top_attach_carve_h], center=true);
            
            translate([0, servo_l/2 - 29.65/2, servo_h - top_attach_carve_h/2 - wall/2])
            cube([top_narrow_ridge_w, 29.65, top_attach_carve_h], center=true);
 
            //connector
            translate([0, servo_l/2 - 18.86 - connectors_l/2, connectors_depth/2 - wall - 1])
            cube([connectors_w, connectors_l, connectors_depth], center=true);           
            
            
        }
        

    
    }
    
}





module n_40a(){
    
    union(){
        difference(){
            
            translate([-(servo_w/2 + wall), 0, -wall/2])
            servo_jacket();
            
            translate([-(servo_w/2 + wall), servo_h/2 + wall + 5, 0])
            cube([servo_w + wall * 2 + 1, 10, servo_h + wall * 2 + 1], center = true);
        
        }
        
        difference(){
            
            translate([servo_w/2 + wall, 0, -wall/2])
            rotate([90,0,0])
            servo_jacket();
            
            translate([servo_w/2 + wall, 0, servo_h/2 + wall + 5])
            cube([servo_w + wall * 2 + 1, servo_h + wall * 2 + 1, 10], center = true);
            
            
        }
        
    }
    
    //translate([-(servo_w/2 + wall), 0, -wall/2])
    //lx16a();
    
    //translate([servo_w/2 + wall, 0, -wall/2])
    //rotate([90,0,0])
    //lx16a();
    
}


//arm
module servo_arm(){
    
    translate([0, servo_l/2+wall, 0])
    rotate([0, 0, 180])
    lx16a();
    
    translate([0, -(servo_h/2+wall), -5])
    rotate([-90, 0, 180])
    lx16a();
    
    translate([0, -(servo_h + wall * 3 +servo_l/2 + 5), 5])
    rotate([0, 90, 180])
    lx16a();
    
    translate([servo_w/2 + servo_h/2 + 5, servo_l/2+wall, 5])
    rotate([0, 90, 180])
    lx16a();
    
}

module servo_leg(){
    
    translate([-(servo_w/2 + wall * 3 + servo_w * 2 + 40), 0, -wall/2])
    lx16a();
    
    translate([-(servo_w/2 + wall + servo_w + 40), 0, -wall/2])
    rotate([90,0,0])
    lx16a();
    
    //knee
    translate([0, 0, -wall/2 -10])
    rotate([90,90,0])
    lx16a();
    
    
    translate([servo_w/2 + servo_w + wall, 0, -wall/2])
    rotate([90,0,0])
    lx16a();
    
    translate([servo_h/2 + wall * 3 + servo_w * 2, 0, -wall/2])
    rotate([90,0,-90])
    lx16a();
    
    translate([servo_h/2 + wall * 3 + servo_w * 2 + servo_l/2, servo_w + wall * 3, -wall/2])
    rotate([180,0,90])
    lx16a();    
    
    
    
}


