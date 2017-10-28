
difference()
{

    difference()
    {
        length = 125.8;
        width = 113.37;
        height = 12.82;
        wall = 2;
        brim = 2;
        floor = 3;
        cube([length,width,height]);
        translate([wall,brim,floor])
            cube([length - 2* wall,width - 2*brim, height - floor]);
    }
    screw = 1;
    screwlength = 6;
    screwdist = 87;
    screwheight = 6;
    translate([screwdist,3,13 - screwheight])
        rotate([90,0,0])
        {
            cylinder(r = screw,h=screwlength);
        }
}
