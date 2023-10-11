$fn=100;
clearance = 0.5;

sensor_width = 14.2;
sensor_lenght = 27.0;
sensor_height = 2.2;

module sensor_frame(){
  difference(){
      hull(){
        translate([0,0,clearance])
          minkowski(){
            cube([sensor_width + 2*clearance, sensor_lenght+ 2*clearance, sensor_height-2*clearance],center=true);
            sphere(r = clearance);
          }
        translate([0,0,-sensor_height/2 + clearance/20])
          minkowski(){
            cube([sensor_width + 2*sensor_height, sensor_lenght + 2*sensor_height, clearance/10], center=true);
            translate([0,0,clearance/20]) cylinder(r = clearance, h = clearance/10);
          }
      }
      cube([sensor_width + clearance, sensor_lenght + clearance, sensor_height],center=true);
      cube([sensor_width-2, sensor_lenght-2, 2*sensor_height],center=true);
  }
}

sensor_frame();
