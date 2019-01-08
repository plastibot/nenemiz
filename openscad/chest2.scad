rad=2;

chest();

module chest(){
    
    union(){
    
        difference(){
            
            union(){

                hull(){
                    
                    translate([-28/2, 58, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([28/2, 58, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([-116/2, 54, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([116/2, 54, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([-116/2, 4, 0])
                    cylinder(r=rad, h=25, $fn=32);
                    
                    translate([116/2, 4, 0])
                    cylinder(r=rad, h=25, $fn=32);

                    translate([-100/2, -50, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([100/2, -50, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    
                    
                    translate([-66/2, -50, 0])
                    cylinder(r=rad, h=25, $fn=32);
                    
                    translate([66/2, -50, 0])
                    cylinder(r=rad, h=25, $fn=32);
                    
                    translate([-116/2, 18, 0])
                    cylinder(r=rad, h=25, $fn=32);
                    
                    translate([116/2, 18, 0])
                    cylinder(r=rad, h=25, $fn=32);
                    
                    translate([-90/2, 44, 0])
                    cylinder(r=rad, h=25, $fn=32);
                    
                    translate([90/2, 44, 0])
                    cylinder(r=rad, h=25, $fn=32);
                    
                    
                }
                
            }
            
            translate([0, 0, -0.1])
            hull(){
                
                translate([-24/2, 56, -1])
                cylinder(r=rad, h=18, $fn=32);
                
                translate([24/2, 56, -1])
                cylinder(r=rad, h=18, $fn=32);
                
                translate([-112/2, 52, 0])
                cylinder(r=rad, h=18, $fn=32);
                
                translate([112/2, 52, 0])
                cylinder(r=rad, h=18, $fn=32);
                
                translate([-112/2, 2, 0])
                cylinder(r=rad, h=23, $fn=32);
                
                translate([112/2, 2, 0])
                cylinder(r=rad, h=23, $fn=32);

                translate([-96/2, -48, 0])
                cylinder(r=rad, h=18, $fn=32);
                
                translate([96/2, -48, 0])
                cylinder(r=rad, h=18, $fn=32);
                
                
                
                translate([-62/2, -48, 0])
                cylinder(r=rad, h=23, $fn=32);
                
                translate([62/2, -48, 0])
                cylinder(r=rad, h=23, $fn=32);
                
                translate([-112/2, 16, 0])
                cylinder(r=rad, h=23, $fn=32);
                
                translate([112/2, 16, 0])
                cylinder(r=rad, h=23, $fn=32);
                
                translate([-86/2, 42, 0])
                cylinder(r=rad, h=23, $fn=32);
                
                translate([86/2, 43, 0])
                cylinder(r=rad, h=23, $fn=32);
                
            }
                
                

        }
    }
}