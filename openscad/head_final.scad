include <config.scad>
use <electronics.scad>


//rotate([180, 0, 180])
//scale(1.6)
head();


module head(){
    difference(){
        
        union(){
            

            rotate([180, 0, -90])
            import("../stl/head_base_3.stl", convexity=3);
            
            
            //standoffs to attach i2s
            translate([0,26,-1.5]) rotate([90,0,0]) color("orange") {
                
                hull(){
                    translate([-53/2,-28.5/2,-2]) cylinder(d=6, h=6, $fn=12);
                    translate([-53/2,-13.5/2,-2]) cylinder(d=6, h=1, $fn=12);
                }
                    
                hull(){    
                    translate([-53/2, 28.5/2,-1.5]) cylinder(d=6, h=5.5, $fn=12);
                    translate([-53/2, 38.5/2, 3]) cylinder(d=6, h=1, $fn=12);
                }
                
                hull(){
                    translate([53/2,-28.5/2,-2]) cylinder(d=6, h=6, $fn=12);
                    translate([53/2,-13.5/2,-2]) cylinder(d=6, h=1, $fn=12);
                    
                }
                
                hull(){
                    translate([53/2, 28.5/2,-1.5]) cylinder(d=6, h=5.5, $fn=12);
                    translate([53/2, 38.5/2, 3]) cylinder(d=6, h=1, $fn=12);
                }
                    
            }
            
            
            ///standoffs to attach right mic 
            translate([21,27,1]) rotate([-90,-90,0]) color("orange") {
            
                hull(){
                    translate([15/2 - 7/2, -10/2, -1]) cylinder(d=5, h=2, $fn=6);
                    translate([15/2 + 10/2, -10/2, -1]) cylinder(d=5, h=2, $fn=6);
                //}
                    
                //hull(){    
                    translate([15/2 - 7/2, 10/2, -1]) cylinder(d=5, h=2, $fn=6);
                    translate([15/2 + 10/2, 10/2, -1]) cylinder(d=5, h=2, $fn=6);
                }
            }
            
            ///standoffs to attach left mic 
            translate([-21,27,1]) rotate([-90,-90,0]) color("orange") {
            
                hull(){
                    translate([15/2 - 7/2, -10/2, -1]) cylinder(d=5, h=2, $fn=6);
                    translate([15/2 + 10/2, -10/2, -1]) cylinder(d=5, h=2, $fn=6);
                //}
                    
                //hull(){    
                    translate([15/2 - 7/2, 10/2, -1]) cylinder(d=5, h=2, $fn=6);
                    translate([15/2 + 10/2, 10/2, -1]) cylinder(d=5, h=2, $fn=6);
                }
            }
        
        }
    
        


        // holes to attach camera
        //translate([0,19.5,19.8])  {
            //translate([-39/2,-12.2/2+2.25,0.5]) cylinder(d=2.1, h=4);
            //translate([-39/2, 12.2/2-2.25,0.5]) cylinder(d=2.1, h=4);
            //translate([39/2,-12.2/2+2.25,0.5]) cylinder(d=2.1, h=4);
            //translate([39/2, 12.2/2-2.25,0.5]) cylinder(d=2.1, h=4);
            
            //pocket for camera sensor
            
            //translate([-45.8/2, -12.8/2-1.2, 0])
            //cube([45.8, 14, 0.9]);
            
            //color("darkgrey")
            //translate([-9/2, -9/2, 0.9])
            //cube([9.0, 9.0, 2.2]);
            
            //color("darkgrey")
            //translate([0, 0, 0.9+2.2])
            //cylinder(d=8.6, h=1.8, $fn=32);
        
            //color("darkgrey")
            //translate([0, 0, 0.9+2.2+1.8])
            //cylinder(d=6.6, h=2.3, $fn=32);
            
            //color("darkgrey")
            //translate([0, 0, 0.9+2.2+1.8+2.3])
            //cylinder(d1=2, d2=5, h=2, $fn=32);
        //}
        

 /**   
        //holes to atach lcd screen
        translate([0.8,-8,21]) rotate([0,0,180]) {  //was 21 on Z
            translate([-54.42/2,-39.18/2,-1]) #cylinder(d=2.1, h=5);
            translate([-54.42/2, 39.18/2,-1]) cylinder(d=2.1, h=5);
            translate([54.42/2,-39.18/2,-1]) cylinder(d=2.1, h=5);
            translate([54.42/2, 39.18/2,-1]) cylinder(d=2.1, h=5);  
            
            translate([-(58.42/2)+3.7,-(43.18-0.5)/2,-1])
            cube([51,43.18,4.4]);
            
            translate([0.8, -1.5, 2])
            cube([44, 37, 6], center=true);
               
            
        }  
    
        
        //hole for LCD screen
        //color("orange")
        //translate([0, -6.5, 23])
        //cube([44, 37, 6], center=true);

        //holes to attach i2s
        translate([0,23,-1.5]) rotate([90,0,0]) {
            #translate([-53/2,-28.5/2,-1]) cylinder(d=2.1, h=3);
            translate([-53/2, 28.5/2,-1]) cylinder(d=2.1, h=3);
            translate([53/2,-28.5/2,-1]) cylinder(d=2.1, h=3);
            translate([53/2, 28.5/2,-1]) cylinder(d=2.1, h=3);
        }
             
         
**/
    
        //holes to attach left speaker
        translate([31,-2.9,1.6]) rotate([0,90,0]) {
            #translate([-24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([-24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
        }



        //holes to attach right speaker
        translate([-31,-2.9,1.6]) rotate([0,-90,0]) {
            #translate([-24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([-24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2,-28.5/2,-1]) cylinder(d=2.1, h=4);
            translate([24/2, 28.5/2,-1]) cylinder(d=2.1, h=4);
        }
        
   /**     
        //holes to attach right mic
        translate([21,26.5,1]) rotate([-90,-90,0]) {
            translate([15/2 - 5/2, -10/2, -2]) cylinder(d=2.1, h=4);
            translate([15/2 - 5/2, 10/2, -2]) cylinder(d=2.1, h=4);
            
            //hole to mic
            translate([15/2 - 5/2, 0, -1.5]) rotate([0, 20, 0]) cylinder(d1=4, d2=2, h=9);
            
            //pocket
            translate([15/2 - 22/2, 0, -0.8]) cube([10, 18, 2], center=true);
            
        }
        
        //holes to attach left mic
        translate([-21,26.5,1]) rotate([-90,-90,0]) {
            translate([15/2 - 5/2, -10/2, -2]) cylinder(d=2.1, h=4);
            translate([15/2 - 5/2, 10/2, -2]) cylinder(d=2.1, h=4);
            
            //hole to mic
            translate([15/2 - 5/2, 0, -1.5]) rotate([0, 20, 0]) cylinder(d1=4, d2=2, h=9);
            
            //pocket
            translate([15/2 - 22/2, 0, -0.8]) cube([10, 18, 2], center=true);
        }
        
        
        
        
        

        
       **/ 
        

//    }
        
       

    }
    
    //render_electronics();

}

module render_electronics() {
    
        //engrave camera profile on inner face
        //translate([0,19.5,19.3])
        //camera();
    
        //engrave lcd screen
        //translate([0.8,-8,18.5])
        //rotate([0,0,180])
        //screen_ili9225();
    
        //engrave I2S amplifier card
        //translate([0,22,-1.5])
        //rotate([90,0,0])
        //I2S_card();
    
        //engrave left speaker
        //translate([28.5,-2.9,1.6])
        //rotate([0,90,0])
        ////rotate([0,0,90])
        //speaker();
    
        //engrave right speaker
        //translate([-28.5,-2.9,1.6])
        //rotate([0,-90,0])
        //speaker();
        
        //microphone right
        translate([21,24.5,1])
        rotate([-90,-90,0])
        mic();
        
        //microphone left
        translate([-21,24.5,1])
        rotate([-90,-90,0])
        mic();
        
}
