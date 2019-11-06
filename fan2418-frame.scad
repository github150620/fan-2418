width = 84;
height = 40;

motor_diameter = 24.4+0.3;

// motor base
difference(){
    cylinder(d=motor_diameter+2,h=24+1.3,$fn=32);

    translate([0,0,-0.01]){
        cylinder(d=motor_diameter,h=24,$fn=32);
    }
    translate([0,0,22]){
        cylinder(d=7.5,h=5,$fn=12);
    }
    for(x=[-7.5,7.5]){
        translate([x,0,22]){
            cylinder(d=2.5,h=5,$fn=8);
        }
    }
}

// connectors
difference(){
    translate([0,0,2.5]){
        for(z=[0,90]){
            rotate([0,0,z]){
                cube([81,5,5], center=true);
            }                
        }
    }

    translate([0,0,-0.01]){
        cylinder(d=motor_diameter,h=24,$fn=32);
    }
}

// flow guide
difference(){
    cylinder(d=82,h=height,$fn=32);
    cylinder(d=79,h=100,$fn=32,center=true);

    // anchor
    translate([0,0,height/2]){
        rotate([90,0,0]){
            translate([0,0,39]){
                cylinder(h=4,d=1.8,$fn=8);
            }
        }
        rotate([-90,0,0]){
            translate([0,0,39]){
                cylinder(h=4,d=1.8,$fn=8);
            }
        }
        rotate([0,90,0]){
            translate([0,0,39]){
                cylinder(h=4,d=1.8,$fn=8);
            }
        }
        rotate([0,-90,0]){
            translate([0,0,39]){
                cylinder(h=4,d=1.8,$fn=8);
            }
        }
    }
}
