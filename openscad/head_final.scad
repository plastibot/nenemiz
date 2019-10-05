include <config.scad>
//use <servo_12g.scad>
//use <servo_5g.scad>
use <electronics.scad>


//rotate([180, 0, 180])
//scale(1.6)
head();


module head(){
    difference(){
        
        union(){
            
            //translate([0,0,0])
            //color("grey", 0.1)
            import("../stl/head_base.stl", convexity=3);
            
            /**
            translate([0, 7, 34]) hull(){
                
                translate([-15, 0, 0]) rotate([0, 0, 0]) cylinder(d=3, h=12, $fn=32);
                translate([15, 0, 0]) rotate([0, 0, 0]) cylinder(d=3, h=12, $fn=32);
                translate([11, 4, 0]) rotate([11, -10, 0]) cylinder(d=3, h=12, $fn=32);
                translate([-11, 4, 0]) rotate([11, 10, 0]) cylinder(d=3, h=12, $fn=32);
                
            
            }
            
            translate([-20, -15.1, 36.67])
            rotate([0,90,0])
            rotate([0,0,22.5])
            cylinder(d=11, h=40, $fn=8);
            
            
            
            //was 35
            translate([0, 1, 34]) {
            
            translate([-31/2,-26/2,-1]) 
            cylinder(d=5, h=5);
            
            translate([-31/2, 26/2-7.5,-1]) 
            cylinder(d=5, h=5);
            
            translate([31/2,-26/2,-1]) 
            cylinder(d=5, h=5);
            
            translate([31/2, 26/2-7.5,-1]) 
            cylinder(d=5, h=5);
            
        }

            
            //new wider ears to put speakers
            //color("green", 0.4)
            translate([19.9, -2.5, 25.5])
            rotate([0, 90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            //color("green", 0.4)
            translate([-19.9, -2.5, 25.5])
            rotate([0, -90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            
            color("orange", 0.3)
            translate([0, -3.2, 37.5])
            cube([25, 22, 4], center=true);
            
        }
        
        //flatten face
        translate([-25,-20,41.75])
        cube([50, 40, 20]);
        
        //flatten inner face
        translate([-26/2,-26/2-2,29])
        cube([26, 26, 7]);
        
        **/
        
    }
}
        
        //engrave pi camera profile on inner face
        translate([0,19.5,19.3])
        //rotate([0,0,180])
        camera();

        translate([0,19.5,19.3])  {
            #translate([-39/2,-12.2/2+2.25,-1]) cylinder(d=2.1, h=3);
            translate([-39/2, 12.2/2-2.25,-1]) cylinder(d=2.1, h=3);
            translate([39/2,-12.2/2+2.25,-1]) cylinder(d=2.1, h=3);
            translate([39/2, 12.2/2-2.25,-1]) cylinder(d=2.1, h=3);
        }
        
        //engrave lcd screen
        translate([0.8,-8,18.5])
        rotate([0,0,180])
        screen_ili9225();
    
         translate([0.8,-8,21]) rotate([0,0,180]) {
            #translate([-54.42/2,-39.18/2,-1]) cylinder(d=2.1, h=5);
            translate([-54.42/2, 39.18/2,-1]) cylinder(d=2.1, h=5);
            translate([54.42/2,-39.18/2,-1]) cylinder(d=2.1, h=5);
            translate([54.42/2, 39.18/2,-1]) cylinder(d=2.1, h=5);  
         }  
    
        
        //engrave I2S amplifier card
        translate([0.8,23,-1.5])
        rotate([90,0,0])
        I2S_card();
         
         
        //engrave left speaker
        translate([28.5,-2.9,1.6])
        rotate([0,90,0])
        //rotate([0,0,90])
        speaker();
    
        translate([31,-2.9,1.6]) rotate([0,90,0]) {
            #translate([-24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([-24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
        }

        //engrave right speaker
        translate([-28.5,-2.9,1.6])
        rotate([0,-90,0])
        speaker();

        translate([-31,-2.9,1.6]) rotate([0,-90,0]) {
            #translate([-24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([-24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
        }
        
        
        
        //microphone
        color("orange")
        translate([0,25,8.5])
        rotate([-90,0,0])
        cylinder(d=6.5, h=4.5, $fn=32);
//    }
        
        /**
        
        
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

        
            
        
        
        
    //}

}
