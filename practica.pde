int xJugador = 55;
int yJugador=55;
int vidas = 5;
boolean perdido = false;
void setup () { 
  size (600, 600); 
  background (0);
}
void draw () {
  background(0);
  stroke(0, 0, 255);
  strokeWeight(10);
  line(30, 50, 30, 150);
  line(80, 50, 80, 100);
  line(80, 100, 500, 100);
  line (30, 150, 450, 150);
  line (500, 100, 500, 250);
  line(450, 150, 450, 200);
  line(450, 200, 30, 200);
  line(500, 250, 80, 250);
  line(30, 200, 30, 400);
  line(80, 250, 80, 350);
  line(30, 400, 450, 400);
  line(80, 350, 500, 350);
  line(450, 400, 450, 470);
  line(500, 350, 500, 470);
  noStroke();
  fill(0, 255, 0);
  ellipse(xJugador, yJugador, 30, 30);
  noStroke();
  fill(100, 200, 100);
  ellipse(475, 200, 20, 20);
  ellipse(475, 380, 20, 20);
  ellipse(61, 378, 20, 20);
  ellipse(61, 225, 20, 20);

  if ( xJugador < 50) {
    xJugador= 55 ;
    yJugador =55;  
    vidas = vidas -1;
  }
  if (xJugador > 480 ) {
    xJugador=55;
    yJugador =55; 
    vidas = vidas -1;
  }
  if ((xJugador > 60) && (yJugador < 120)) { 
    xJugador=55;
    yJugador = 55;
    vidas = vidas -1;
  }
  if ((xJugador < 460 )&& (yJugador > 380)) {
    xJugador = 55;
    yJugador =55;
    vidas = vidas -1;
  }
  if (( xJugador < 470)&& ( yJugador > 130 )&& (yJugador < 220)) {
    xJugador = 55;
    yJugador =55;
    vidas = vidas -1;
  }
  if (( xJugador > 60) && (yJugador > 230) && ( yJugador < 370)) {
    xJugador = 55;
    yJugador =55;
    vidas = vidas -1;
  }


  text("Vidas = "+vidas, width-80, 10);            
  if (vidas<=0)                                  
  {
    textSize(50);
    text("Game Over ", 150, 300);   
    noLoop(); 
    perdido=true;
    textSize(50);
  }
  if ( xJugador >=500 && yJugador >= 500 )
  { 
    textSize(50);
    text(" WINNER ", 150, 300);
    noLoop();                                   
    perdido=true;
    textSize(50);
  }
}
void keyPressed() {
  print("X: "+xJugador+"\n");
  print("Y: "+ yJugador+"\n");
  if (keyCode == RIGHT) {
    if ((xJugador==475) && (yJugador==193)) {
      xJugador = xJugador + 12;
    } else {
      xJugador = xJugador + 6;
    }
  }

  if (keyCode == LEFT) {
    xJugador = xJugador - 6;
  }
  if (keyCode == UP) {
    yJugador=yJugador -6;
  }
  if (keyCode== DOWN) {
    if ((xJugador==475) && (yJugador==193)) {
      yJugador = yJugador + 12;
    } else {
      yJugador = yJugador + 6;
    }
  }
}
