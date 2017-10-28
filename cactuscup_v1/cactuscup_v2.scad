use <threads.scad>
difference()
{
    brim = 10;
    width = 80;
    height = 10;
    cylinder(r=47.5,h=15);
    translate([0,0,-1])
        metric_thread(diameter = width+brim,pitch =height/2,length = height,rectangle = .7);
}
module basecac(height,width,floor)
{
    difference()
    {
        brim = 15;
        slide = 1;
        metric_thread(diameter = width,pitch =height/2,length = height,rectangle = .7);
        translate([0,0,floor])
            cylinder(h=height,r=(width/2)-5);
    }
}

