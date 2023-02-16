module roundedSquareWithHeight(sizeX, sizeY, height, radius){
    translate([radius,radius,0])
    linear_extrude(height){
        minkowski(){
            square([sizeX-radius*2,sizeY-radius*2]);
            circle(radius);
        }
    }
}
