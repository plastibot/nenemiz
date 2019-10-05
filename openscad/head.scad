include <config.scad>
//use <servo_12g.scad>
//use <servo_5g.scad>
use <electronics.scad>


//rotate([180, 0, 180])
scale(1.6)
head();


module head(){
    difference(){
        
        union(){
            
            translate([0,0,0])
            //color("red")
            import("../MiniPlan6/MiniPlan5_40.stl", convexity=3);
            
            translate([0, 7, 24]) hull(){
                
                translate([-18, -3, 15]) rotate([0, 0, 0]) cylinder(d=3, h=7, $fn=32);
                translate([18, -3, 15]) rotate([0, 0, 0]) cylinder(d=3, h=7, $fn=32);
                translate([11, 14, -10]) rotate([11, 10, 0]) cylinder(d=3, h=26, $fn=32);
                translate([-11, 14, -10]) rotate([11, -10, 0]) cylinder(d=3, h=26, $fn=32);
                //translate([6, 4, -20]) rotate([-11, 10, 0]) #cylinder(d=3, h=16, $fn=32);
                //translate([-6, 4, -20]) rotate([-11, -10, 0]) #cylinder(d=3, h=16, $fn=32);
                
            
            }
            
            translate([-20, -15.5, 36.8])
            rotate([0,90,0])
            rotate([0,0,45])
            cylinder(d=14, h=40, $fn=4);
            
            
            
            //was 35
            //translate([0, 1, 34]) {
            
            //translate([-31/2,-26/2,-1]) 
            //cylinder(d=5, h=5);
            
            //translate([-31/2, 26/2-7.5,-1]) 
            //cylinder(d=5, h=5);
            
            //translate([31/2,-26/2,-1]) 
            //cylinder(d=5, h=5);
            
            //translate([31/2, 26/2-7.5,-1]) 
            //cylinder(d=5, h=5);
            
        //}

            
            //new wider ears to put speakers
            //color("green", 0.4)
            translate([19.9, -2.5, 25.5])
            rotate([0, 90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            //color("green", 0.4)
            translate([-19.9, -2.5, 25.5])
            rotate([0, -90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            
            //color("orange", 0.3)
            //translate([0, -4.5, 27.5])
            //cube([35, 32, 24], center=true);
            
        }
        
        //flatten face
        translate([-25,-20,41.75])
        cube([50, 40, 20]);
        
        //flatten inner face
        translate([-36/2,-32/2-2,16])
        cube([36, 27, 24.1]);
        
        translate([-31/2,-32/2+21,16])
        cube([31, 10, 24.1]);
        
        //engrave pi camera profile on inner face
        //translate([0,-3,34.5])
        ////rotate([0,0,180])
        //camera();
        
        
        translate([0, -3, 36]) {
            
            translate([-21/2,-20/2,-1]) 
            cylinder(d=2, h=5);
            
            translate([-21/2, 20/2-7.5,-1]) 
            cylinder(d=2, h=5);
            
            translate([21/2,-20/2,-1]) 
            cylinder(d=2, h=5);
            
            translate([21/2, 20/2-7.5,-1]) 
            cylinder(d=2, h=5);
            
        }
        
        translate([0, 1, 33]) {
            
            translate([-31/2,-26/2,-1]) 
            cylinder(d=2, h=8);
            
            translate([-31/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=8);
            
            translate([31/2,-26/2,-1]) 
            cylinder(d=2, h=8);
            
            translate([31/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=8);
            
        }
        
        /**
        //cavity for ear speakers
        //color("green", 0.4)
        translate([19.9, -2.5, 27]) 
        union(){
            intersection(){
            
         
                cube([4, 15.5, 15.5], center=true);
                
                rotate([45, 0, 0])
                cube([4, 17.5, 17.5], center=true);
                
            }
                
            translate([0, 0, -7.5])
            cube([4, 13, 4.6], center=true);
            
            translate([1.9, 0, 0])
            rotate([0, 90, 0])
            cylinder(d=11, h=2, $fn=32);
            
            
        }
        
        
        translate([-19.9, -2.5, 27]) 
        union(){
            intersection(){
            
         
                cube([4, 15.5, 15.5], center=true);
                
                rotate([45, 0, 0])
                cube([4, 17.5, 17.5], center=true);
                
            }
                
            translate([0, 0, -7.5])
            cube([4, 13, 4], center=true);
            
            translate([-1.9, 0, 0])
            rotate([0, -90, 0])
            cylinder(d=11, h=2, $fn=32);
            
            
        }
        
        **/

        
            
        
        
        
    }

}
