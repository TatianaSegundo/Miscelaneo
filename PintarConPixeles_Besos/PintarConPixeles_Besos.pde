PImage derKuss;
PImage leBaiser;
PImage psique;
PImage pygmalion;
PFont fuente, fuente2, fuente3;
int tiempo;


void setup() {

  size(900, 900);
  derKuss = loadImage("derkussklimt.jpg");
  leBaiser = loadImage("lebaisert-lautrec.jpg");
  psique = loadImage("psiquereanimadacanovazoom.jpg");
  pygmalion = loadImage("pygmalionetgalateegerome.jpg");
  textAlign(CENTER, CENTER);
  fuente = loadFont("EdwardianScriptITC-100.vlw");
  fuente2 = loadFont("Corbel-50.vlw");
  tiempo = 0;
  background(0);
}

void draw() {

  if (millis() <=5000) {
    background(0);
    textFont(fuente);
    fill(frameCount);
    textSize(100);
    text("Los besos en el arte", width/2, height/2);
  } 

  if (millis()>=5500 && millis() <10000) {

    fill(255);
    textFont(fuente2);
    textSize(20);
    text("¡Hola!\n Estas son las instrucciones para quien esté viendo esto: \n Si presionas las teclas 'a', 'b', 'c' o 'd', podrás conocer algunas de mis obras favoritas, \n las cuales tienen como inspiración común, el beso. \n Espero que las disfrutes", width/2, height/2);
  } else if (millis() >10000 && millis()<11000) {
    background(0);
  }

  if (key == 'a') {
    surface.setSize(900, 900);
    for (int i =0; i < 3000; i++) {

      float x = random(width);
      float y = random(height);
      color c = derKuss.get(int(x), int(y));
      noStroke();
      fill(c);
      rect(x, y, random(1, 5.5), random(1, 5.5));
    }
    textFont(fuente2);
    textSize(25);
    fill(255);
    text("El beso - Gustav Klimt", width/2, height-70);
  }


  if (key == 'b') {
    surface.setSize(1094, 815);
    for (int i =0; i < 5000; i++) {

      float x = random(width);
      float y = random(height);

      color c = leBaiser.get(int(x), int(y));
      noStroke();
      fill(c);
      //ellipse(x, y, random(1, 8), random(1, 8));
      rect(x, y, random(1, 4), random(1, 8));
    }
    textFont(fuente2);
    textSize(25);
    fill(255);
    text("En la cama: El beso - Henri Toulouse-Lautrec", width/2, height-70);
  }
  if (key == 'c') {
    surface.setSize(613, 900);
    for (int i =0; i < 5000; i++) {

      float x = random(width);
      float y = random(height);
      color c = psique.get(int(x), int(y));
      noStroke();
      fill(c);
      rect(x, y, random(1, 4), random(1, 4));
    }
    textFont(fuente2);
    textSize(25);
    fill(255);
    text("Psique reanimada por el beso del amor - Antonio Canova", width/2, height-70);
  }
  if (key == 'd') {
    surface.setSize(702, 892);
    for (int i =0; i < 2000; i++) {

      float x = random(width);
      float y = random(height);
      color c = pygmalion.get(int(x), int(y));
      noStroke();
      fill(c);
      //rect(x, y, random(1, 8), random(1, 8));
      ellipse(x, y, random(1, 8), random(1, 8));
    }
    textFont(fuente2);
    textSize(25);
    fill(255);
    text("Pigmalión y Galatea - Jean-Léon Gérôme", width/2, height-70);
  
  }
  tiempo=millis();
  println(tiempo);
  //}
}
