// Ejercicio 3: Animación de Figuras Crea una animación que muestre una figura moviéndose por la pantalla. 
// La figura podría ser un círculo, una estrella o cualquier otra forma. Utiliza ciclos para actualizar la 
// posición de la figura en cada cuadro de la animación. Exporta la animación como una secuencia de imágenes y agrégalas al informe PDF.

float circleX;
float circleY;
float circleSpeedX;
float circleSpeedY;
float circlew;
float circlen;
float circleSpeedw;
float circleSpeedn;
float circlep;
float circleo;
float circleSpeedp;
float circleSpeedo;



void setup() {
  size(500,500);
  circleX = width / 2; 
  circleY = height / 2; 
  circleSpeedX = 2; // Velocidad en el eje X
  circleSpeedY = 1.5; // Velocidad en el eje Y
  
  circlew = width / 2; 
  circlen = height / 2; 
  circleSpeedw = 2; // Velocidad en el eje X
  circleSpeedn = 1.5; // Velocidad en el eje Y
  
  circlep = width / 2; 
  circleo = height / 2; 
  circleSpeedp = 2; // Velocidad en el eje X
  circleSpeedo = 1.5; // Velocidad en el eje Y
  
  
}

void draw() {
 background(#8887F7);
  
  // Actualizar la posición del círculo
  circleX += circleSpeedX;
  circleY += circleSpeedY;
  circlew += circleSpeedw;
  circlen += circleSpeedn;
  circlep += circleSpeedp;
  circleo += circleSpeedo;
  
  
  // Rebotar en los bordes
  if (circleX > width || circleX < 0) {
    circleSpeedX *= -1;
  }
  if (circleY > height || circleY < 0) {
    circleSpeedY *= -1;
  }
  
  if (circlew > width || circlew < 0) {
    circleSpeedw *= -1;
  }
  if (circlen > height || circlen < 0) {
    circleSpeedn *= -1;
  }
  
  if (circlep > width || circlep < 0) {
    circleSpeedp *= -1;
  }
  if (circleo > height || circleo < 0) {
    circleSpeedo *= -1;
  }
   
  fill(#D1FA32);
  ellipse(circlew, circlen, 90, 90);
  // posición actual
  fill(#5198FA);
  ellipse(circleX, circleY, 70, 70);
  
  fill(#51FA9B);
  ellipse(circlew, circlen, 50, 50);
  
  fill(#FA1212);
  textSize(24); // Tamaño del texto
  text("Por: Mónica Jiménez",270,480); 
}
