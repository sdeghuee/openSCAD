use <threads.scad>
difference()
{

    difference()
    {
        brim = 7;
        width = 80;
        height = 20; //original = 10
        metric_thread(diameter = 87,pitch =10/2,length = height,rectangle = .7);
        translate([0,0,1])
            cylinder(r=40,h=height);
    }
    translate([40,0,10])
        cube([5,7,3]);
}
