stud = 2; //length of latching peg
cacheight = 19; //height of the peg assy
cacwidth = 4; //width of peg assy
minirad = cacwidth /4; // radi of peg
clearence = 1; //distance down the peg support the peg is
cutl = 10; //cutout length
cutw = 5; //cutout width
rad = 42; //radius of larger insert
height = 2; // how tall the insert is 
prisl = 2; //cantilever length
prisw = 2; //cantilever width
prisz = 4; //cantilver height

use <fillets.scad>;


difference()
{
union()
{

    cylinder(r = rad, h = height);
    mirror([0,1,0])
        studs(rad,height,cacwidth,cacheight,clearence,minirad,stud);   
    studs(rad,height,cacwidth,cacheight,clearence,minirad,stud);
}
translate([rad,0,.75*height])
    cube([cutl,cutw,height*2],center = true);
}   


module studs(rad,height,cacwidth,cacheight,clearence,minirad,stud)
{
translate([0,rad - stud/2,height])
        {
            union()
            { 
				rc = 5;
                translate([-cacwidth/2,-rc,rc])
                    fil_linear_o(l = cacwidth, r = rc, angle=90);
				*prism(basel,cacwidth,cacheight);
                translate([0,0,cacheight/2])
                    cube([cacwidth,2,cacheight],center = true);
                translate([-prisl/2,0,cacheight])
                {
                    rotate([-90,0,0])
                        prism(prisl,prisw,prisz);
                }
            }
        }
    }
    
 module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}
