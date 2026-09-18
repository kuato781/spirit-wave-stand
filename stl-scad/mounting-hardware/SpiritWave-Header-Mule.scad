
DONOR="/mnt/data/ix14_v2_stand.stl";
SHIFT=1.5; YMIN=-9; YMAX=9; ZMIN=0; ZMAX=7;
R=9; C=24; PIVOT_X=23; THRU_R=2; BOTTOM_FILL_H=1.05;

module donor_header(){
  intersection(){
    import(DONOR,convexity=30);
    translate([-100,YMIN,ZMIN]) cube([200,YMAX-YMIN,ZMAX-ZMIN]);
  }
}
module left_half(){
  intersection(){
    donor_header();
    translate([-100,-100,-10]) cube([100,200,30]);
  }
}
module right_half(){
  intersection(){
    donor_header();
    translate([0,-100,-10]) cube([100,200,30]);
  }
}
module widened_header(){
  union(){
    translate([-SHIFT,0,0]) left_half();
    translate([SHIFT,0,0]) right_half();
    translate([-SHIFT,YMIN,ZMIN]) cube([2*SHIFT,YMAX-YMIN,ZMAX-ZMIN]);
  }
}
module capsule_2d(){
  hull(){
    translate([-C,0]) circle(r=R,$fn=180);
    translate([ C,0]) circle(r=R,$fn=180);
  }
}
module capsule_header(){
  intersection(){
    widened_header();
    linear_extrude(height=ZMAX,convexity=30) capsule_2d();
  }
}
module bottom_flat_fill(){
  difference(){
    linear_extrude(height=BOTTOM_FILL_H,convexity=30) capsule_2d();
    for(x=[-PIVOT_X,PIVOT_X])
      translate([x,0,-0.1]) cylinder(h=BOTTOM_FILL_H+0.2,r=THRU_R,$fn=96);
  }
}
union(){
  capsule_header();
  bottom_flat_fill();
}
