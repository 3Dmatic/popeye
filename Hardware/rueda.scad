diametro=80; //margen 70-80
altura=5; //minimo 4
eje=6; //eje del motor

difference(){
	difference(){
		difference(){
			cylinder (r=diametro/2, h=altura, $fn=30);
			for (i=[1:36]){
				rotate ([0,0,i*10])
					translate ([diametro/2-6,0,altura-3])
						cylinder (h=3.1, r1=0, r2=3.5, $fn=6);
			}
		}

		for (i=[0:3]){
			rotate ([0,0,i*10+360/4])
				translate ([diametro/4,0,-2])
					cylinder (r=9, h=altura+10, $fn=5);
		}
		for (i=[0:3]){
			rotate ([0,0,i*10+360/4+360/4])
				translate ([diametro/4,0,-2])
					cylinder (r=9, h=altura+10, $fn=5);
		}
		for (i=[0:3]){
			rotate ([0,0,i*10+360/4+360/4+360/4])
				translate ([diametro/4,0,-2])
					cylinder (r=9, h=altura+10, $fn=5);
		}
		for (i=[0:3]){
			rotate ([0,0,i*10+360/4+360/4+360/4+360/4])
				translate ([diametro/4,0,-2])
					cylinder (r=9, h=altura+10, $fn=5);
		}
	}
	translate ([0,0,-2])
		cylinder (r=7/2, h=altura+20, $fn=10);
}


//CUERPO DEL EJE
difference(){
cylinder (r=20/2, h=altura+12, $fn=12);
translate ([0,0,-2])
	cylinder (r=eje/2, h=altura+25, $fn=12);
translate ([-3.5,5,10])
	cube([7,3,20]);
translate([0,20,13.5])
	rotate ([90,0,0])
		cylinder (r=4/2, h=20, $fn=10);
}