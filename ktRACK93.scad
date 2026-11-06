//
// ktRACK93
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2;

base();
//base_mir();




module base_mir()
{
difference()
{
    mirror([1,0,0]) base();
}
}



module base()
{
difference()
{

    union()
    {
        translate([0, 0, 0]) cube([100, 40, 30]);
    }
    #translate([0, 0, 30]) rotate([-10, 0, 0]) cube([100, 45, 30]);


}
}



module base_point()
{
difference()
{

    union()
    {
        hull() {
            translate([0, 5, 30]) rotate([-10, 0, 0]) cylinder(h=1, r=10/2, $fn=100);
            translate([-30/2, -20/2, 0]) cube([30, 30, 1]);
        }
    }
    #translate([30/2-12, 20/2-8-8, 0]) cube([12, 8, 3.5]);

}
}
