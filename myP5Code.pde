void setup() {
    size(400, 400); 
}

//Variable Declarations Go Here
var sunSize = 300;
var colorIntensity = 0;
var boatShift = 200;
var boatX = 0;
var fadeIn = 0;


draw = function(){  
  //Shapes and Color Go Here
  noStroke();
  background(255 + colorIntensity, 115 + colorIntensity, 115 + colorIntensity);

  //sun
  fill(255, 176, 56);
  ellipse(201,198,sunSize,sunSize); 

  //water wave 1 dark blue
  fill(0, 81, 186);
  rect(0,286,400,150);
  
  //water wave 2 med blue
  fill(3, 112, 255);
  rect(0,226,400,60);

  //water wave 3 light blue
  fill(125, 181, 255);
  rect(0,198,400,30);

  //sailboat base
  fill(61, 35, 23);
  triangle(204+boatX,288,165+boatX,333,246+boatX,333); //mid tri
  triangle(164+boatX,333,207+boatX,286,125+boatX,287); //left tri
  triangle(246+boatX,333,278+boatX,286,203+boatX,287); //right tri

  //sailboat stick
  rect(200+boatX,180,5,120);

  //sails
  fill(255, 243, 212);
  triangle(205+boatX,180,274+boatX,275,205+boatX,275);
  triangle(201+boatX,180,136+boatX,275,200+boatX,275);


if(sunSize<0){
  //stars
  fill(255,255,255,fadeIn);
  ellipse(47,40,5,5);
  ellipse(107,96,5,5);
  ellipse(132,42,5,5);
  ellipse(181,19,5,5);
  ellipse(196,72,5,5);
  ellipse(61,74,5,5);
  ellipse(13,96,5,5);
  ellipse(11,18,5,5);
  ellipse(86,15,5,5);
  ellipse(225,43,5,5);
  ellipse(252,86,5,5);
  ellipse(301,9,5,5);
  ellipse(278,49,5,5);
  ellipse(331,58,5,5);
  ellipse(173,111,5,5);
  ellipse(308,107,5,5);
  ellipse(360,27,5,5);
  ellipse(381,86,5,5);
  ellipse(392,13,5,5);
  ellipse(244,9,5,5);
  ellipse(58,116,5,5);
  
}

//animations

  sunSize = sunSize - 1;
  colorIntensity = colorIntensity - 0.5;
  boatShift += 1;
    boatX ++;

if(boatX>400){
  boatX =- 200;
}

if(colorIntensity < 1){
  fadeIn = fadeIn + 0.5;
}


  
};

void mousePressed(){
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  console.log(myText);
  sunSize = 300;
  colorIntensity = 0;
  boatShift = 200;
  boatX = 0;
  fadeIn = 0;
  
}

/*
Maze Example (optional resource)
https://docs.google.com/presentation/d/1DyaMVDBpmNi1RTdYOJxhIZ0Ue8uoy_S5YaPy8T0zAE4/edit#slide=id.g20520603692_0_47
*/