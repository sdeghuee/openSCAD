difference()
{
    height = 10;
    width = 40;
    brim = 5;
    floor = 2;
    slide = 1;
    base(width,height,brim,floor,slide);
    union()
    {
    translate([0,0,8])
    cylinder(r=width-slide,h =1);
    translate([width/2,0,8])
    cube([width,width*2,.5],center=true);
    }
}

module base(width,height,brim,floor,slide)
{
    difference()
    {
        cylinder(r=width,h=height); // a 20 mm cube
        translate([0,0,floor]) // start 1 mm below the surface
            cylinder(r=width - brim,h=10+1); // and go 1 mm above
    }
}
