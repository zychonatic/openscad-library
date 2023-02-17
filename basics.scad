module roundedSquareWithHeight(sizeX, sizeY, height, radius){
    translate([radius,radius,0])
    linear_extrude(height){
        minkowski(){
            square([sizeX-radius*2,sizeY-radius*2]);
            circle(radius);
        }
    }
}


module cylinderWithHole(radius,height,wallThickness){
    difference(){
        cylinder(height,radius,radius);

        translate([0,0,-0.5])cylinder(height+1,radius-wallThickness,radius-wallThickness);

    }
}
