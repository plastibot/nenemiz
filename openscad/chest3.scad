use <lx16a.scad>;


rad=2;

//translate([0, 0, 28])
//chest();


trunk();

//translate([0, 0, -3])
//control_board();

translate([0, 0, -20])
trunk_bracket();


module chest(){
    color("yellow")
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
                    #cylinder(r=rad, h=31.4, $fn=32);
                    
                    translate([116/2, 4, 0])
                    #cylinder(r=rad, h=31.4, $fn=32);

                    translate([-100/2, -50, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([100/2, -50, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    
                    translate([-30/2, 4, 0])
                    #cylinder(r=rad, h=35, $fn=32);
                    
                    translate([30/2, 4, 0])
                    #cylinder(r=rad, h=35, $fn=32);
                    
                    
                    translate([-66/2, -50, 0])
                    #cylinder(r=rad, h=28, $fn=32);
                    
                    translate([66/2, -50, 0])
                    #cylinder(r=rad, h=28, $fn=32);
                    
                    translate([-116/2, 18, 0])
                    #cylinder(r=rad, h=35, $fn=32);
                    
                    translate([116/2, 18, 0])
                    #cylinder(r=rad, h=35, $fn=32);
                    
                    translate([-90/2, 44, 0])
                    #cylinder(r=rad, h=35, $fn=32);
                    
                    translate([90/2, 44, 0])
                    #cylinder(r=rad, h=35, $fn=32);
                    
                    
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
                cylinder(r=rad, h=29.1, $fn=32);
                
                translate([112/2, 2, 0])
                cylinder(r=rad, h=29.1, $fn=32);

                translate([-96/2, -48, 0])
                cylinder(r=rad, h=18, $fn=32);
                
                translate([96/2, -48, 0])
                cylinder(r=rad, h=18, $fn=32);
                
                
                
                translate([-62/2, -48, 0])
                cylinder(r=rad, h=26, $fn=32);
                
                translate([62/2, -48, 0])
                cylinder(r=rad, h=26, $fn=32);
                
                translate([-112/2, 16, 0])
                cylinder(r=rad, h=33, $fn=32);
                
                translate([112/2, 16, 0])
                cylinder(r=rad, h=33, $fn=32);
                
                translate([-86/2, 42, 0])
                cylinder(r=rad, h=33, $fn=32);
                
                translate([86/2, 43, 0])
                cylinder(r=rad, h=33, $fn=32);
                
            }
                
                

        }
    }
}

module trunk(){
    
    union(){
    
        difference(){
            
            union(){

                hull(){
                    
                    translate([-28/2, 58, 0])
                    cylinder(r=rad, h=27, $fn=32);
                    
                    translate([28/2, 58, 0])
                    cylinder(r=rad, h=27, $fn=32);
                    
                    translate([-116/2, 54, 0])
                    cylinder(r=rad, h=27, $fn=32);
                    
                    translate([116/2, 54, 0])
                    cylinder(r=rad, h=27, $fn=32);
                    
                    translate([-116/2, 4, 0])
                    cylinder(r=rad, h=27, $fn=32);
                    
                    translate([116/2, 4, 0])
                    cylinder(r=rad, h=27, $fn=32);

                    translate([-100/2, -50, 0])
                    cylinder(r=rad, h=27, $fn=32);
                    
                    translate([100/2, -50, 0])
                    cylinder(r=rad, h=27, $fn=32);
                    
                    
                    //translate([-30/2, 4, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    //translate([30/2, 4, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    //translate([-66/2, -50, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    //translate([66/2, -50, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    //translate([-116/2, 18, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    //translate([116/2, 18, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    //translate([-90/2, 44, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    //translate([90/2, 44, 0])
                    //cylinder(r=rad, h=27, $fn=32);
                    
                    
                }
                
            }
            
            translate([0, 0, -0.1])
            hull(){
                
                translate([-24/2, 56, 0])
                cylinder(r=rad, h=25, $fn=32);
                
                translate([24/2, 56, 0])
                cylinder(r=rad, h=25, $fn=32);
                
                translate([-112/2, 52, 0])
                cylinder(r=rad, h=25, $fn=32);
                
                translate([112/2, 52, 0])
                cylinder(r=rad, h=25, $fn=32);
                
                translate([-112/2, 2, 0])
                cylinder(r=rad, h=25, $fn=32);
                
                translate([112/2, 2, 0])
                cylinder(r=rad, h=25, $fn=32);

                translate([-96/2, -48, 0])
                cylinder(r=rad, h=25, $fn=32);
                
                translate([96/2, -48, 0])
                cylinder(r=rad, h=25, $fn=32);
                
                
                
                //translate([-62/2, -48, 0])
                //cylinder(r=rad, h=25, $fn=32);
                
                //translate([62/2, -48, 0])
                //cylinder(r=rad, h=25, $fn=32);
                
                //translate([-112/2, 16, 0])
                //cylinder(r=rad, h=25, $fn=32);
                
                //translate([112/2, 16, 0])
                //cylinder(r=rad, h=25, $fn=32);
                
                //translate([-86/2, 42, 0])
                //cylinder(r=rad, h=25, $fn=32);
                
                //translate([86/2, 43, 0])
                //cylinder(r=rad, h=25, $fn=32);
                
            }
            
            // Left leg servo hubs
            translate([100/2-15, -49, 13.5])
            rotate([90, 0, 0])
            #cylinder (r=10.8, h=4, $fn=64);
            
            //Left leg attach holes
            translate([100/2-15-34.89+6.11, -49, 1.25+2])
            rotate([90, 0, 0])
            #cylinder (r=1.25, h=4, $fn=64);
            
            translate([100/2-15-34.89+6.11+20.7, -49, 1.25+2])
            rotate([90, 0, 0])
            #cylinder (r=1.25, h=4, $fn=64);
            
            translate([100/2-15-34.89+6.11, -49, 1.25+2+20.5])
            rotate([90, 0, 0])
            #cylinder (r=1.25, h=4, $fn=64);
            
            translate([100/2-15-34.89+6.11+20.7, -49, 1.25+2+20.5])
            rotate([90, 0, 0])
            #cylinder (r=1.25, h=4, $fn=64);
            

            // Right leg servo hubs                
            translate([-(100/2-15), -49, 13.5])
            rotate([90, 0, 0])
            cylinder (r=10.8, h=4, $fn=64);

            //Right leg attach holes
            translate([-(100/2-15-34.89+6.11), -49, 1.25+2])
            rotate([90, 0, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([-(100/2-15-34.89+6.11+20.7), -49, 1.25+2])
            rotate([90, 0, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([-(100/2-15-34.89+6.11), -49, 1.25+2+20.5])
            rotate([90, 0, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([-(100/2-15-34.89+6.11+20.7), -49, 1.25+2+20.5])
            rotate([90, 0, 0])
            cylinder (r=1.25, h=4, $fn=64);
            



            // Right arm servo hubs
            translate([-114/2, 58-15, 13.5])
            rotate([0, -90, 0])
            cylinder (r=10.8, h=4, $fn=64);
                
            //Right arm attach holes
            translate([-114/2, 58-15-34.89+6.11, 1.25+2])
            rotate([0, -90, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([-114/2, 58-15-34.89+6.11+20.7, 1.25+2])
            rotate([0, -90, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([-114/2, 58-15-34.89+6.11, 1.25+2+20.5])
            rotate([0, -90, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([-114/2, 58-15-34.89+6.11+20.7, 1.25+2+20.5])
            rotate([0, -90, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            
            // Left arm servo hubs
            translate([114/2, 58-15, 13.5])
            rotate([0, 90, 0])
            cylinder (r=10.8, h=4, $fn=64);
                
            // Left arm attach holes
            translate([114/2, 58-15-34.89+6.11, 1.25+2])
            rotate([0, 90, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([114/2, 58-15-34.89+6.11+20.7, 1.25+2])
            rotate([0, 90, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([114/2, 58-15-34.89+6.11, 1.25+2+20.5])
            rotate([0, 90, 0])
            cylinder (r=1.25, h=4, $fn=64);
            
            translate([114/2, 58-15-34.89+6.11+20.7, 1.25+2+20.5])
            rotate([0, 90, 0])
            cylinder (r=1.25, h=4, $fn=64);  
  

            // Neck servo hub
            translate([0, 57, 25-9.5])
            rotate([-90, 0, 0])
            cylinder (r=9.5, h=4, $fn=64);

        }
    }
}

module control_board(){
    
    color("green")
    union(){
    
        difference(){
            
            union(){

                hull(){
                    
                    translate([-24/2, 56, 0])
                    cylinder(r=rad, h=2, $fn=32);
                    
                    translate([24/2, 56, 0])
                    cylinder(r=rad, h=2, $fn=32);
                    
                    translate([-112/2, 52, 0])
                    cylinder(r=rad, h=2, $fn=32);
                    
                    translate([112/2, 52, 0])
                    cylinder(r=rad, h=2, $fn=32);
                    
                    translate([-112/2, 2, 0])
                    cylinder(r=rad, h=2, $fn=32);
                    
                    translate([112/2, 2, 0])
                    cylinder(r=rad, h=2, $fn=32);

                    translate([-96/2, -48, 0])
                    cylinder(r=rad, h=2, $fn=32);
                    
                    translate([96/2, -48, 0])
                    cylinder(r=rad, h=2, $fn=32);
                    
                   
                    
                }
                
                //x = 58.1
                //y = 48.55
                
                translate([0, 0, 0]) {
                    
                    translate([58.1/2, 48.55/2, 0])
                    cylinder(d=5, h=5, $fn=32);
                    
                    translate([-58.1/2, 48.55/2, 0])
                    cylinder(d=5, h=5, $fn=32);
                    
                    translate([58.1/2, -48.55/2, 0])
                    cylinder(d=5, h=5, $fn=32);
                    
                    translate([-58.1/2, -48.55/2, 0])
                    cylinder(d=5, h=5, $fn=32);
                }
            }
            


        }
    }
}

module trunk_bracket(){
    
    color("green")
    union(){
    
        difference(){
            
            union(){

                hull(){
                    
                    //translate([-24/2, 56, 0])
                    //cylinder(r=rad, h=2, $fn=32);
                    
                    //translate([24/2, 56, 0])
                    //cylinder(r=rad, h=2, $fn=32);
                    
                    translate([-112/2, 7, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([112/2, 7, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([-112/2, 2, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([112/2, 2, 0])
                    cylinder(r=rad, h=24.5, $fn=32);

                    translate([-96/2, -48, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([96/2, -48, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                   
                    
                }
                
                
                hull(){
                    
                    translate([-24/2, 56, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([24/2, 56, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([-42/2, 55.5, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([42/2, 55.5, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([-42/2, 2, 0])
                    cylinder(r=rad, h=24.5, $fn=32);
                    
                    translate([42/2, 2, 0])
                    cylinder(r=rad, h=24.5, $fn=32);

                    //translate([-96/2, -48, 0])
                    //cylinder(r=rad, h=2, $fn=32);
                    
                    //translate([96/2, -48, 0])
                    //cylinder(r=rad, h=2, $fn=32);
                    
                   
                    
                }
                
                
            }
            
            translate([-90/2, -50, -0.5])
            cube([90, 35, 25.5]);

            translate([-24/2, 34, -0.5])
            cube([24, 24, 25.5]);
            
            
            // holes to attach neck servo
            translate([22/2, 40, 15.5])
            rotate([0, 90, 0])
            #cylinder(r=2, h=24.5, $fn=32);
            
            translate([22/2, 52, 15.5])
            rotate([0, 90, 0])
            #cylinder(r=2, h=24.5, $fn=32);
            
            translate([22/2, 40, -2.5])
            rotate([0, 90, 0])
            #cylinder(r=2, h=24.5, $fn=32);
            
            translate([22/2, 52, -2.5])
            rotate([0, 90, 0])
            #cylinder(r=2, h=24.5, $fn=32);
            
            // holes to attach neck servo
            translate([-22/2, 40, 15.5])
            rotate([0, -90, 0])
            #cylinder(r=2, h=24.5, $fn=32);
            
            translate([-22/2, 52, 15.5])
            rotate([0, -90, 0])
            #cylinder(r=2, h=24.5, $fn=32);
            
            translate([-22/2, 40, -2.5])
            rotate([0, -90, 0])
            #cylinder(r=2, h=24.5, $fn=32);
            
            translate([-22/2, 52, -2.5])
            rotate([0, -90, 0])
            #cylinder(r=2, h=24.5, $fn=32);

        }
    }
    
    translate([-38, 30, 0])
    rotate([0, 90, 180])
    lx16a();
}