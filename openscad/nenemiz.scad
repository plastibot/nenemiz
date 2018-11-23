include <config.scad>
include <lx16a.scad>

wall = 1;

//servo_jacket();

//translate([-120, 0, -80])
//rotate([0, -270, 180])
n_40a();

/**
translate([120, 0, -80])
rotate([0, -270, 180])
mirror([0, 0, 1])
n_40a();

translate([97, 10, -35])    
rotate([-90, 0, -90])
n_43r();

translate([120, 23, 13])    
rotate([90, 0, 90])
n_41r();

translate([120, 0, 90])
rotate([0, -270, 180])
mirror([1, 0, 0])
n_40a();
**/


//n_13a();


//servo_arm();
//servo_leg();

//rotate([0,-90,90])
//mock_up();

module mock_up(){
    
    translate([0, -35, 0])
    servo_leg();
    
    translate([0, 35, 0])
    mirror([0, 1, 0])
    servo_leg();
    
    translate([160, 77, 0])
    rotate([0,180, -90])
    mirror([1, 0, 0])
    servo_arm();
    
    translate([160, -77, 0])
    rotate([0, 180, -90])
    //mirror([1, 0, 0])
    servo_arm();
    
    
    translate([-45, -55, -10])    
    rotate([0, -90, 90])
    n_43r();
    
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
    
    color("darkgrey")
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
    
    translate([-(servo_w/2 + wall), 0, -wall/2])
    lx16a();
    
    translate([servo_w/2 + wall, 0, -wall/2])
    rotate([90,0,0])
    lx16a();
    
}

module n_41r(){
    
    union(){
        difference(){
            
            translate([-(servo_w/2 + wall), 0, -wall/2])
            servo_jacket();
            
            //translate([-(servo_w/2 + wall), servo_h/2 + wall + 5, 0])
            //cube([servo_w + wall * 2 + 1, 10, servo_h + wall * 2 + 1], center = true);
        
        }
        
        hull(){
            
            translate([-(servo_w/2 + wall), servo_h/2 + wall + 5, -servo_h/2 - wall * 3])
            cube([servo_w + wall * 2, 10, wall*4], center = true);
            
            translate([-(servo_w/2 + wall), servo_h/2 + wall + 45, -servo_h/2 - wall * 3]) 
            cylinder(d=horn_d, h=4, center=true);
            
            translate([-(servo_w/2 + wall + 15), servo_h/2 + wall + 35, -servo_h/2 - wall * 3]) 
            cylinder(d=horn_d, h=4, center=true);
            
        }
        
    }
    
    translate([-(servo_w/2 + wall), 0, -wall/2])
    lx16a();
    
    
}


module n_13a(){
    
    union(){
        
        hull(){
                
            translate([-(servo_w/2 + wall), servo_h/2 + wall + 5, -servo_h/2 - wall * 3])
            cube([horn_d, 5, wall*4], center = true);
            
            //translate([-(servo_w/2 + wall), servo_h/2 + wall + 45, -servo_h/2 - wall * 3]) 
            //cylinder(d=horn_d, h=4, center=true);
            
            translate([-(servo_w/2 + wall + 5), servo_h/2 + wall + 25, -servo_h/2 - wall * 3]) 
            cylinder(d=horn_d, h=4, center=true);
            
        }
        
    }
    
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
    
    //ankle
    translate([-(servo_w/2 + wall * 3 + servo_w * 2 + 40), 0, -wall/2])
    rotate([0,180,180])
    lx16a();
    
    translate([-(servo_w/2 + wall + servo_w + 40), 0, -wall/2])
    rotate([90,0,0])
    lx16a();
    
    //knee
    translate([0, 0, -wall/2 -10])
    rotate([90,90,0])
    lx16a();
    
    //pelvis
    translate([servo_w/2 + servo_w + wall, 0, -wall/2])
    rotate([90,0,0])
    lx16a();
    
    translate([servo_w/2 + wall * 3 + servo_w * 2, 0, -wall/2])
    rotate([0,180,0])
    lx16a();
    
    translate([servo_h/2 + wall * 7 + servo_w * 2 + servo_l/2, 0, -wall/2])
    rotate([90,-90,-90])
    lx16a();    
    
    
    
}

module n_43r(){
    
    hull(){
        translate([0, 32, 0])
        cylinder(d=horn_d, h=3);
        
        translate([0, -32, 0])
        cylinder(d=horn_d, h=3);
        
        translate([17, 22, 0])
        cylinder(d=horn_d, h=3);
        
        translate([17, -3, 0])
        cylinder(d=horn_d, h=3);
    
        translate([-7, 0, 1.5])
        cube([22, 22, 3], center=true);
        
        //translate([0, 41, 3])
        //sphere(r=2);
        
        //translate([0, -41, 3])
        //sphere(r=2);
        
        //translate([26, 22, 3])
        //sphere(r=2);
        
        //translate([26, -3, 3])
        //sphere(r=2);
        

    }
    
        //translate([0, 41, 3])
        //sphere(r=2);
        
        //translate([0, -41, 3])
        //sphere(r=2);
        
        //translate([26, 22, 3])
        //sphere(r=2);
        
        //translate([26, -3, 3])
        //sphere(r=2);
    
        //translate([-14, 0, 1.5])
        //cube([22, 22, 3], center=true);
    
    
}


