
$fn=100;

//on_off_switch();

//pi_zero();

//sipeed_dock();

//translate ([0,100,0])
//pca9685();

//dc_dc();

//camera();

//mic();

//imu();

//esp8266();

//screen();

screen_ST7789();

//speaker();

//I2S_card();



module header(pins, rows){
  color("darkgrey") cube([2.54*pins,2.54*rows,1.27]);
  
  color("gold")
  for(x=[0:pins-1],y=[0:rows-1])
    translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-3.5]) cube([0.6,0.6,11.5]);
}


module pi_zero(){
    // PCB
    color("limegreen") difference(){
        hull(){
            translate([-(65-6)/2,-(30-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([-(65-6)/2, (30-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (65-6)/2,-(30-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (65-6)/2, (30-6)/2,0]) cylinder(r=3, h=1.4 );
        }
        
        translate([-65/2+3.5,-30/2+3.5,-1]) cylinder(d=2.75, h=3);
        translate([-65/2+3.5, 30/2-3.5,-1]) cylinder(d=2.75, h=3);
        translate([65/2-3.5,-30/2+3.5,-1]) cylinder(d=2.75, h=3);
        translate([65/2-3.5, 30/2-3.5,-1]) cylinder(d=2.75, h=3);
    }
    
    // Header
    translate([-10*2.54,30/2-2.54-3.5,1.4])
    header(20,2);
    
    translate([-65/2,-30/2,1.4]){
        color("silver"){
        
            // micro USB
            translate([41-8/2,-1.5,0]) cube([8,6,2.6]);
            translate([54-8/2,-1.5,0]) cube([8,6,2.6]);        
            
            // HDMI
            translate([6.9,-1.5,0]) cube([13,7,3]);
        }
    
        color("darkgrey"){
        
            // Camera
            translate([64-4/2,7.1,0]) cube([4,16,2.5]);
        }
    
        // Micro SD Card
        color("silver") translate([0,8.6,-0]) cube([13,14,1.5]);    
        color("darkgrey") translate([-2.4,10.1,0]) cube([2.4,11,1]);
    }
}


module sipeed_dock(){
    // PCB
    color("limegreen") difference(){
        hull(){
            translate([-(52.324-6)/2,-(37.338-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([-(52.324-6)/2, (37.338-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (52.324-6)/2,-(37.338-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (52.324-6)/2, (37.338-6)/2,0]) cylinder(r=3, h=1.4 );
        }
        
        translate([-45.72/2,-31.115/2,-1]) cylinder(d=2.75, h=3);
        //translate([-45.72/2, 31.115/2,-1]) cylinder(d=2.75, h=3);
        translate([45.72/2,-31.115/2,-1]) cylinder(d=2.75, h=3);
        translate([45.72/2, 31.115/2,-1]) cylinder(d=2.75, h=3);
    }
    
    // Headers
    translate([-5*2.54+1.27,32/2-2.54,1.4])
    header(10,2);
    
    translate([-5*2.54+1.27,-32/2-2.54,1.4])
    header(10,2);
    
    translate([-32/2-2.54,0-2.54*5+1.27,1.4])
    header(2,9);
    
    translate([32/2-2.54,0-2.54*5+1.27,1.4])
    header(2,9);
    
    


        
    // micro USB
    color("silver") translate([41/2, 0-4, 1.4]) cube([9,8,2.6]);

     
    // M1w Kendrite 210
    color("silver") translate([-24/2, -24/2, 1.4]) cube([24,24,2.6]);
    
    //LCD connector
    color("white") translate([-51/2,-10.25, -1.5]) cube([4,15,1.5]);    
    
    // Camera Connector
    color("white") translate([-2.5,-11.25, -1.5]) cube([15, 4, 1.5]); 
    
    // Micro SD Card
    color("silver") translate([-13,2.4,-1.5]) cube([10,5,1.5]);    
    
    
}



module pca9685(withHeader=true){  
  
    // PCB
    color("limegreen") difference(){
        translate([0,0,0]) hull(){
            translate([-(62.5-6)/2,-(25.4-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([-(62.5-6)/2, (25.4-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (62.5-6)/2,-(25.4-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (62.5-6)/2, (25.4-6)/2,0]) cylinder(r=3, h=1.4 );
        }
        
        translate([-55.9/2,-18.8/2,-1]) cylinder(d=2.75, h=3);
        translate([-55.9/2, 18.8/2,-1]) cylinder(d=2.75, h=3);
        translate([55.9/2,-18.8/2,-1]) cylinder(d=2.75, h=3);
        translate([55.9/2, 18.8/2,-1]) cylinder(d=2.75, h=3);
    } 
    
    
    // capacitor
    color("silver")
    translate([-(62.5/2)+17.1,(25.4-8.3)/2,1.4])
    cylinder(d=8.3, h=12.7);
    
    //power connector
    color("blue")
    translate([-(62.5/2)+25.1+2.54*2,(25.4-8.3)/2,1.4])
    cube([2.54*2,4,8]);
    
    // Header top
    translate([-(62.5/2)+5.65,-25.4/2,1.4])
    header(4,3);
    
    translate([2.25,-25.4/2,1.4])
    header(4,3);
    
    translate([-2.25-2.54*4,-25.4/2,1.4])
    header(4,3);
    
    translate([62.5/2-5.65-2.54*4,-25.4/2,1.4])
    header(4,3);
    
    translate([62.5/2,-25.4/2+5.08,1.4])
    rotate([0,0,90])
    header(6,1);
    
    translate([-62.5/2+2.54,-25.4/2+5.08,1.4])
    rotate([0,0,90])
    header(6,1);

  
}

module screen_ST7789(){  
  
   
    //lcd screen frame
    color("white")
    translate([-(60.26)/2,-(42.72)/2, 0])
    cube([60.26, 42.72, 2.45]);
    
    //screen
    color("darkgrey")
    translate([-(48.96/2)+3,-(36.72/2),0.1])
    cube([48.96,36.72,2.7]);
    
    //spi connector
    //translate([58.42/2-2.5,-43.18/2+7.62,1.4])
    //rotate([0,0,90])
    //header(8,1);
    
    //translate([-58.42/2+2.54+2.5,-43.18/2+5.08,1.4])
    //rotate([0,0,90])
    //header(4,1);

  
}



module screen_ST7735(withHeader=false){  
  
    // PCB
    color("limegreen") difference(){
        translate([0,0,0]) hull(){
            translate([-(58.2-4)/2,-(34.7-4)/2,0]) cylinder(r=2, h=1.7 );
            translate([-(58.2-4)/2, (34.7-4)/2,0]) cylinder(r=2, h=1.7 );
            translate([ (58.2-4)/2,-(34.7-4)/2,0]) cylinder(r=2, h=1.7 );
            translate([ (58.2-4)/2, (34.7-4)/2,0]) cylinder(r=2, h=1.7 );
        }
        
        translate([-52/2,-28.5/2,-1]) cylinder(d=2.1, h=3);
        translate([-52/2, 28.5/2,-1]) cylinder(d=2.1, h=3);
        translate([52/2,-28.5/2,-1]) cylinder(d=2.1, h=3);
        translate([52/2, 28.5/2,-1]) cylinder(d=2.1, h=3);
    } 
    
    
    //lcd screen frame
    color("white")
    translate([-(46.5)/2,-(34.7)/2,1.7])
    cube([46.5,34.7,2.7]);
    
    //screen
    color("darkgrey")
    translate([-(38/2)+3,-(32/2),1.7])
    cube([38,32,3.7]);
    
    //spi connector
    //translate([58.42/2-2.5,-43.18/2+7.62,1.4])
    //rotate([0,0,90])
    //header(8,1);
    
    //translate([-58.42/2+2.54+2.5,-43.18/2+5.08,1.4])
    //rotate([0,0,90])
    //header(4,1);

  
}


module screen_ili9225(withHeader=false){  
  
    // PCB
    color("limegreen") difference(){
        translate([0,0,0]) hull(){
            translate([-(58.42-4)/2,-(43.18-4)/2,0]) cylinder(r=2, h=0.5 );
            translate([-(58.42-4)/2, (43.18-4)/2,0]) cylinder(r=2, h=0.5 );
            translate([ (58.42-4)/2,-(43.18-4)/2,0]) cylinder(r=2, h=0.5 );
            translate([ (58.42-4)/2, (43.18-4)/2,0]) cylinder(r=2, h=0.5 );
        }
        
        translate([-54.42/2,-39.18/2,-1]) cylinder(d=2.1, h=3);
        translate([-54.42/2, 39.18/2,-1]) cylinder(d=2.1, h=3);
        translate([54.42/2,-39.18/2,-1]) cylinder(d=2.1, h=3);
        translate([54.42/2, 39.18/2,-1]) cylinder(d=2.1, h=3);
    } 
    
    
    //lcd screen frame
    color("white")
    translate([-(58.42/2)+4,-(43.18-1)/2,0.5])
    cube([50,42.18,4.4]);
    
    //screen
    color("darkgrey")
    translate([-(58.42/2)+8,-(43.18-4)/2,0.5])
    cube([44,37,5.51]);
    
    //spi connector
    //translate([58.42/2-2.5,-43.18/2+7.62,1.4])
    //rotate([0,0,90])
    //header(8,1);
    
    //translate([-58.42/2+2.54+2.5,-43.18/2+5.08,1.4])
    //rotate([0,0,90])
    //header(4,1);

  
}

module dc_dc(){
    
    // PCB
    color("limegreen") difference(){
        translate([0,0,0]) hull(){
            translate([-(24.5-6)/2,-(48-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([-(24.5-6)/2, (48-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (24.5-6)/2,-(48-6)/2,0]) cylinder(r=3, h=1.4 );
            translate([ (24.5-6)/2, (48-6)/2,0]) cylinder(r=3, h=1.4 );
        }
      
        translate([0,0,-1]) {
            
            //translate([-17/2,-35/2,0])
            //cylinder(d=3.15, h=2.5);
            
            translate([-17/2,35/2, 0])
            cylinder(d=3.15, h=2.5);
            
            translate([17/2,-35/2, 0])
            cylinder(d=3.15, h=2.5);
            
            //translate([17/2,35/2, 0])
            //cylinder(d=3.15, h=2.5); 
          
        }


    } 
    
    
    // capacitors
    color("darkblue")
    translate([-(24.5/2)+12.1,(48-8)/2,1.4])
    cylinder(d=8, h=10);
    
    color("darkblue")
    translate([-(24.5/2)+12.1,-(48-8)/2,1.4])
    cylinder(d=8, h=10);
    
    //toroid
    
    difference(){
        
        color("orange")
        translate([(24.5/2)-22.1+9,(48-30)/2,1.4])
        cylinder(d=12, h=7.6);
        
        color("orange")
        translate([(24.5/2)-22.1+9,(48-30)/2,0.5])
        cylinder(d=6, h=11);

        
    }
    
    
    //potentiometer
    color("blue")
    translate([24.5/2-2,-48/2+9,1.4])
    rotate([0,0,90])
    cube([5,10,11]);
    
    
    //IC
    color("black")
    translate([24.5/2-8,-48/2+15,1.4])
    rotate([0,0,90])
    cube([11,11,5]);
    
    
}


module on_off_switch(){
    
    union(){
        
        color("silver")
        translate([-8/2, -4/2, 0])
        cube([8, 4, 3.8]);
        
        color("black")
        translate([-1.5/2, -1.5/2, 3.8])
        cube([1.5, 1.5, 3]);
        
        color("silver")
        translate([-0.5/2, -0.5/2, -3.2])
        cube([0.5, 0.5, 3.2]);
        
        color("silver")
        translate([-0.5/2-2.5, -0.5/2, -3.2])
        cube([0.5, 0.5, 3.2]);
        
        color("silver")
        translate([-0.5/2+2.5, -0.5/2, -3.2])
        cube([0.5, 0.5, 3.2]);
        
        
        
        
    }
    
}


module camera(){
    
    // 45.10 x 12.20
    difference(){
        union(){
            color("limegreen")
            translate([-45.1/2, -12.2/2, 0])
            cube([45.1, 12.2, 0.9]);
            
            
            //camera sensor
            color("darkgrey")
            translate([-8.5/2, -8.5/2, 0.9])
            cube([8.5, 8.5, 2.2]);
            
            color("darkgrey")
            translate([0, 0, 0.9+2.2])
            cylinder(d=8, h=1.8, $fn=32);
        
            color("darkgrey")
            translate([0, 0, 0.9+2.2+1.8])
            cylinder(d=6, h=2.3, $fn=32);
            
            color("darkgrey")
            translate([0, 0, 0.9+2.2+1.8+2.3])
            cylinder(d1=2, d2=5, h=2, $fn=32);
            
            //sensor connector
            //color("orange")
            //translate([-8.5/2, -8.5/2+2.4-10.5, 0.9])
            //cube([8.5, 10.5, 2.5]);
            
            //led
            //color("white")
            //translate([-20/2, -8.5/2+2.4-7, 0.9])
            //cube([20, 3, 1]);            
            
            
            //connector
            //color("white")
            //translate([-20.8/2, -5.5+24/2, -2.4])
            //cube([20.8, 5.5, 2.4]);
            
            
    
        }
          
        translate([-39/2,-12.2/2+2.25,-1]) cylinder(d=2.1, h=3);
        translate([-39/2, 12.2/2-2.25,-1]) cylinder(d=2.1, h=3);
        translate([39/2,-12.2/2+2.25,-1]) cylinder(d=2.1, h=3);
        translate([39/2, 12.2/2-2.25,-1]) cylinder(d=2.1, h=3);
    }
    
    
}

module imu(){
    
        difference(){
        union(){
            color("limegreen")
            translate([-20.5/2, -15.5/2, 0])
            cube([20.5, 15.5, 0.9]);
            
            
            //mpu6050
            color("black")
            translate([-4.5/2, -3.5/2, 0.9])
            cube([4.5, 4.5, 0.5]);
            

            
            
            //led
            //color("white")
            //translate([-20/2, -8.5/2+2.4-7, 0.9])
            //cube([20, 3, 1]);            
            
            
            //connector
            //color("white")
            //translate([-20.8/2, -5.5+24/2, -2.4])
            //cube([20.8, 5.5, 2.4]);
            
            translate([-4*2.54-0.5,-16.5/2,0.45])
            color("gold")
            for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-0.5]) cube([1.6,1.6,1]);
            
            
    
        }
          
       
        translate([-15/2, 25/2-7.5,-1]) cylinder(d=3, h=3);
        translate([15/2, 25/2-7.5,-1]) cylinder(d=3, h=3);
        
        translate([-4*2.54-0.5,-15.5/2,0.45])
        for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+1.2)/2,y*2.54+(1.27)/2,-0.75]) cube([1,1,1.5]);
        

    }
    
}
    


module esp8266(){
    
        difference(){
        union(){
            color("limegreen")
            translate([-20.5/2, -15.5/2, 0])
            cube([20.5, 15.5, 0.9]);
            
            
            //mpu6050
            color("black")
            translate([-4.5/2, -3.5/2, 0.9])
            cube([4.5, 4.5, 0.5]);
            

            
            
            //led
            //color("white")
            //translate([-20/2, -8.5/2+2.4-7, 0.9])
            //cube([20, 3, 1]);            
            
            
            //connector
            //color("white")
            //translate([-20.8/2, -5.5+24/2, -2.4])
            //cube([20.8, 5.5, 2.4]);
            
            translate([-4*2.54-0.5,-16.5/2,0.45])
            color("gold")
            for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-0.5]) cube([1.6,1.6,1]);
            
            translate([-4*2.54-0.5,16.5/2-2.54,0.45])
            color("gold")
            for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-0.5]) cube([1.6,1.6,1]);
            
            
    
        }
          
       
        //translate([-15/2, 25/2-7.5,-1]) cylinder(d=3, h=3);
        //translate([15/2, 25/2-7.5,-1]) cylinder(d=3, h=3);
        
        translate([-4*2.54-0.5,-15.5/2,0.45])
        for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+1.2)/2,y*2.54+(1.27)/2,-0.75]) cube([1,1,1.5]);
        
        translate([-4*2.54-0.5,15.5/2-2.54,0.45])
        for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+1.2)/2,y*2.54+(1.27)/2,-0.75]) cube([1,1,1.5]);
        

    }
    
}


module speaker(){
    
    //ear speakers
    //color("green", 0.4)
    difference(){
        union(){
            color("limegreen")
            translate([-30/2, -35.5/2, 0])
            cube([30, 35.5, 1.7]);
            
            
            //speaker
            
            color("darkgrey")
            translate([0, 0, 1.7])
            cylinder(d=28, h=4, $fn=32);
        
            color("grey")
            translate([0, 0, -3.5])
            cylinder(d=24, h=3.5, $fn=32);
            
            //color("darkgrey")
            //translate([0, 0, 0.9+2.2+1.8+2.3])
            //cylinder(d1=2, d2=5, h=2, $fn=32);
            
            //sensor connector
            //color("orange")
            //translate([-8.5/2, -8.5/2+2.4-10.5, 0.9])
            //cube([8.5, 10.5, 2.5]);
            
            //led
            //color("white")
            //translate([-20/2, -8.5/2+2.4-7, 0.9])
            //cube([20, 3, 1]);            
            
            
            //connector
            //color("white")
            //translate([-20.8/2, -5.5+24/2, -2.4])
            //cube([20.8, 5.5, 2.4]);
            
            
    
        }
          
        //translate([-24/2,-28.5/2,-1]) cylinder(d=2.1, h=3);
        //translate([-24/2, 28.5/2,-1]) cylinder(d=2.1, h=3);
        //translate([24/2,-28.5/2,-1]) cylinder(d=2.1, h=3);
        //translate([24/2, 28.5/2,-1]) cylinder(d=2.1, h=3);
    }
    
    
}


module mic(){
    
    difference(){
        union(){
            color("limegreen")
            translate([-15/2, -15/2, 0])
            cube([15, 15, 1.7]);
            
            //mims
            color("darkgrey")
            translate([15/2 - 5/2, 0, 1.7])
            cube([4, 2.5, 1.5], center=true);
            
            
            
        }
        
    translate([15/2 - 5/2, -10/2, -1]) #cylinder(d=2.1, h=3);
    translate([15/2 - 5/2, 10/2, -1]) #cylinder(d=2.1, h=3);
        
    }
    
    
}

module I2S_card(withHeader=true){  
  

    //color("green", 0.4)
    difference(){
        union(){
            color("limegreen")
            translate([-60/2, -35.5/2, 0])
            cube([60, 35.5, 1.9]);
            
            
            //volume knob
            color("darkgrey")
            translate([-60/2+15, -35.5/2+8, 1.9])
            cylinder(d=16, h=4, $fn=32);
            
            //capacitors
            color("grey")
            translate([60/2-20, -35.5/2+3.5+3.15, 1.9])
            cylinder(d=6.3, h=5.8, $fn=32);
            
            color("grey")
            translate([60/2-30, -35.5/2+3.5+3.15, 1.9])
            cylinder(d=6.3, h=5.8, $fn=32);
            
            //color("darkgrey")
            //translate([0, 0, 0.9+2.2+1.8+2.3])
            //cylinder(d1=2, d2=5, h=2, $fn=32);
            
            //2mm connector header
            color("black")
            translate([-60/2+7, 35.5/2-2-5.5, 1.9])
            cube([19.3, 5.5, 7]);
            
            //2.54mm header
            translate([60/2-7-2.54*3,35.5/2-1.8-2.54,1.9])
            header(3,1);
            
            translate([60/2-7-2.54*10-1.27,35.5/2-1.8-2.54,1.9])
            header(7,1);            
            
            //audio jack
            color("black")
            translate([60/2-14, -35.5/2, 1.9])
            cube([6.7, 14, 3.7]);            
            
            
            //speaker connectors
            color("white")
            translate([-60/2, -7.5/2, 1.9])
            cube([3.4, 7.5, 6]);

            color("white")
            translate([60/2-3.4, -7.5/2, 1.9])
            cube([3.4, 7.5, 6]);            
            
    
        }
          
        translate([-53/2,-28.5/2,-1]) cylinder(d=3.1, h=3);
        translate([-53/2, 28.5/2,-1]) cylinder(d=3.1, h=3);
        translate([53/2,-28.5/2,-1]) cylinder(d=3.1, h=3);
        translate([53/2, 28.5/2,-1]) cylinder(d=3.1, h=3);
    }
    
    
}
    

