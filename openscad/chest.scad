include <config.scad>
//use <servo_12g.scad>
//use <servo_5g.scad>
//use <electronics.scad>


chest();


module chest(){
    
    union(){
    
        difference(){
            
            union(){
                
                hull(){
                
                    translate([-76/2, -56/2, 19])
                    roundedRect([76-rad, 56-rad, 1], rad);
                    
                    translate([-76/2, -56/2, 5])
                    roundedRect([76-rad, 56-rad, 1], rad);
                        
                    translate([-56/2, -50/2-3, 0])
                    roundedRect([56-rad, 50-rad, 1], rad);
                    
                    translate([-72/2, 0, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([72/2, 0, 0])
                    cylinder(r=rad, h=20, $fn=32);

                    translate([-72/2, 10, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([72/2, 10, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    //translate([-74/2, -10, 5])
                    //cylinder(r=rad, h=15, $fn=32);
                    
                    //translate([74/2, -10, 5])
                    //cylinder(r=rad, h=15, $fn=32);

                    
                }
            
                
               /**
                //right side tab
                translate([-76/2, 0, 10+20/2]) rotate([0, 0, 0]) difference() {
                    union() {
                        
                        translate([-2/2, -12.5/2-2, 0])
                        cube([2, 12.5, 5.85]);
                        
                        translate([0, -2, 0])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);  
          
                        translate([0, -12.5/2-2, 0])
                        cube([1, 12.5, 6.85]);              
                    }
                    
                    //translate([1, -14/2-2, 0])
                    //cube([2, 14, 7.85]);
                    
                    translate([0, -2, 4])
                    rotate([0, 90, 0])
                    cylinder(d=2, h=4, center=true, $fn=64);
                    
                }
                
            
            
            
                //left side tab
                translate([76/2, 0, 10+20/2]) rotate([0, 0, 0]) difference() {
                    union() {
                        
                        translate([-2/2, -12.5/2-2, 0])
                        cube([2, 12.5, 5.85]);
                        
                        translate([0, -2, 0])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);
                  
                        translate([-1, -12.5/2-2, 0])
                        cube([1, 12.5, 6.85]);      
                        
                    }
                    
                    //translate([-3, -14/2-2, 0])
                    //cube([2, 14, 7.85]);
                    
                    translate([-0, -2, 4])
                    rotate([0, 90, 0])
                    cylinder(d=2, h=4, center=true, $fn=64);
                    
                }
                
                
                //bottom tab
                translate([0, -56/2+2, 10+20/2]) difference(){
                    union(){
                
                        translate([-11/2, -2/2-2, 0])
                        cube([11, 2, 5.85]);
                        
                        translate([0, -2, 0])
                        rotate([0,90,0])
                        cylinder(r=1, h=11, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([0,90,0])
                        cylinder(r=1, h=11, $fn=32, center=true);
                        
                        translate([-11/2, -2, 0])
                        cube([11, 1, 6.85]);
                        
                        
                    }
                    
                    
                //translate([-12.5/2, -1, 0])
                //cube([12.5, 2, 7.85]);
                
                translate([0, -2, 4])
                rotate([90, 0, 0])
                cylinder(d=2, h=4, center=true, $fn=64);
                
                
            }
                
            
                //top tab
                translate([0, 56/2+2, 10+20/2]) difference(){
                    union(){
                
                        translate([-73/2, -2/2-2, 0])
                        cube([73, 2, 6.85]);
                        
                        translate([0, -2, 0])
                        rotate([0,90,0])
                        cylinder(r=1, h=73, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([0,90,0])
                        cylinder(r=1, h=73, $fn=32, center=true);
                        
                        translate([-73/2, -2, 0])
                        cube([73, 1, 5.85]);
                        
                        
                    }
                    
                    
                translate([-57/2, -3.1, -1])
                cube([57, 2.2, 8.85]);
                
                //translate([0, -2, 4])
                //rotate([90, 0, 0])
                //#cylinder(d=2, h=4, center=true, $fn=64);
                    
                translate([32.5, -2, 4])
                rotate([90, 0, 0])
                cylinder(d=2, h=4, center=true, $fn=64);
                            
                translate([-32.5, -2, 4])
                rotate([90, 0, 0])
                #cylinder(d=2, h=4, center=true, $fn=64);
                
                
            }
            **/
            
            }
            
            //carveout
                
            translate([-72/2, -52/2 ,6])
            //cube([72, 52, 18.1]);
            roundedRect([72-rad, 51-rad, 19.1], rad);
            
            hull(){
                
                translate([-72/2, -52/2, 19])
                roundedRect([72-rad, 52-rad, 1], rad);
                
                translate([-72/2, -52/2, 5])
                roundedRect([72-rad, 52-rad, 1], rad);
                    
                translate([-52/2, -46/2-3, 1])
                roundedRect([52-rad, 46-rad, 1], rad);
                
                translate([-68/2, 0, 1])
                cylinder(r=rad, h=20, $fn=32);
                
                translate([68/2, 0, 1])
                cylinder(r=rad, h=20, $fn=32);

                translate([-68/2, 10, 1])
                cylinder(r=rad, h=20, $fn=32);
                
                translate([68/2, 10, 1])
                cylinder(r=rad, h=20, $fn=32);
                
                //translate([-70/2, -10, 5])
                //cylinder(r=rad, h=15, $fn=32);
                
                //translate([70/2, -10, 5])
                //cylinder(r=rad, h=15, $fn=32);

            
            }
            
            //hole for the microUSB connector
            translate([-8/2+18.6, -52/2-4 ,1])
            cube([8, 5, 5]);
            
            /**
            //carve out on low tab to allow power card to be flush
            intersection(){
                translate([-22/2, -52/2-2 ,1])
                cube([22, 5, 3]);

                translate([-22/2, -52/2+1 ,-1])
                rotate([60, 0, 0])
                cube([22, 5, 3]);
                   
            }
            **/
            
            //wall thinning for weight reduction
            
            translate([-58/2, 56/2-20-1, 6])
            roundedRect([58-rad, 20-rad, 19.1], rad);
            
            translate([76/2-22-1, 56/2-20-2, 6])
            roundedRect([22-rad, 20-rad, 19.1], rad);
    
            translate([-76/2+1, 56/2-20-2, 6])
            roundedRect([22-rad, 20-rad, 19.1], rad);
            
            translate([76/2-28-1, -56/2+1, 6])
            roundedRect([28-rad, 18-rad, 19.1], rad);
            
            translate([-76/2+1, -56/2+1, 6])
            roundedRect([28-rad, 18-rad, 19.1], rad);
       
            
        }
    
        
        /**
        rotate([-90, 0, 0]) translate([0,0.4,-28]) color("yellow") difference(){
            
            translate([-53.4/2, -5.7/2-5.7/2-0.4, 0])
            roundedRect([53.4-rad+1, 5.7-rad+1, 15], rad-1);
            
            translate([-51.4/2, -3.7/2-2.3/2-2.3, 0])
            #roundedRect([51.4-rad+1, 3.7-rad+1, 18], rad-1);
            
            translate([-49/2, -3/2-3/2-3.3-0.3, -1])
            cube([49, 2.5, 17]);
            //roundedRect([50-rad+1, 2.3-rad+1, 15], rad-1);
            
        }
        **/
        
    }
   
}

module roundedRect(size, radius)
{
x = size[0];
y = size[1];
z = size[2];

translate([x/2+radius/2, y/2+radius/2, 0]){
linear_extrude(height=z)
hull()
{
// place 4 circles in the corners, with the given radius
translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
circle(r=radius);

translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
circle(r=radius);

translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
circle(r=radius);

translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
circle(r=radius);
}
}
}