//Guarda del final de carrera

rotate([90,0,0]){ //gira el cuerpo para facilitar impresion

//cuerpo central
difference(){ 
	cube([10.5,24,10]);
	translate([3.25,3,-1])
		cube([4,18,12]); //contactos
	translate([2,2,-1])
		cube([7,21,10]); //cuerpo
}

//triangulos laterales
translate([13.3,0,5])
	rotate([-90,0,0])
		cylinder (r=5.7, h=24,  $fn=3);
translate([-2.83,24,5])
	rotate([90,180,0])
		cylinder (r=5.7, h=24,  $fn=3);

}//gira el cuerpo para facilitar impresion