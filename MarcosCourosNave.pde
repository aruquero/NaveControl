Planeta sol, tierra;
PShape ship;                                                          //Pshape para el modelo de la nave
float horizontal, vertical, profundidad;                              //Valores para controlar las coordenadas de la nave
int k,camara,value;                                                   //Variables para controlar el KeyCode, el tutorial y la cámara(saber si está en primera o tercera)
boolean arriba, abajo, derecha, izquierda, delante, detras;           //Variables booleanas para controlar el desplazamiento de la nave
byte SPX = 30, SPY = 20, SPZ = 20;                                    //Velocidad de desplazamiento en los respectivos ejes
PFont f;   
void setup(){
 size(1280,720,P3D);
 sol = new Planeta(50,0,0,0,"imagenes/sol.jpg");
 tierra = new Planeta(30,200,0.009,10,"imagenes/algoazul.jpg");
 sol.add(tierra);
 sol.add(new Planeta(20,100,0.05,5,"imagenes/rocoso.jpg"));
 sol.add(new Planeta(25,350,0.016,-20,"imagenes/jupiter.jpg"));
 sol.add(new Planeta(25,450,0.010,-20,"imagenes/duna.jpg"));
 sol.add(new Planeta(250,900,0.006,-20,"imagenes/marte.jpg"));
 tierra.add(new Planeta(10,40,0.2,0,"imagenes/luna.jpg"));
 ship = loadShape("Nave.obj");
 ship.rotateY(PI/2);
 horizontal = 130;
 vertical = 10;
 profundidad = 360;
 camara = 1;
 value = 1;
 f = createFont("Arial",16,true);
}

void draw(){
  if(value == 1){
      background(255);
      textFont(f);
      fill(0);
      text("Pulsa la tecla 'Enter' para empezar",width/2-190,200);
      text("Pulsa la tecla 'espacio' para alternar entre primera y tercera persona", width/2-190, 230);
      text("En tercera persona:", width/2-190, 260);
      text("Pulsa las flechas del teclado para desplazar la nave", width/2-190,290);
      text("En primera persona:",width/2-190,320);
      text("Pulsa las flechas del teclado para desplazarte horizontal y lateralmente",width/2-190,350);
      text("Pulsa 'Control' y 'Shift' para cambiar la componente vertical de la nave",width/2-190,380);
      
  }else{
     background(loadImage("imagenes/fondosistemasolar.jpg")); 
     pointLight(255, 255, 255, 640, 360, 100);
     translate(width/2,height/2);
     sol.show();
     sol.orbitar();
     textAlign(LEFT);
     textSize(20);
     fill(255);
     text("Pulsa la tecla 'ESC' para cerrar el programa",-620,340);
     text("El programa puede dejar de funcionar al intentar maximizar la aplicación",-620,300);
     //if para controlar el cambio de cámaras entre primera y tercera persona.
     if(camara == -1){
       camera(horizontal, vertical, profundidad, horizontal+10, vertical, profundidad,0.0,1.0,0.0);
       shape(ship,horizontal,vertical,profundidad,40);
     }else{
       camera(640,360,660,640,360,0,0.0,1.0,0.0);
       shape(ship,horizontal,vertical,40,40);
     }
     moverNave();
   }
}  


void keyPressed(){
  k = keyCode;
  movimiento(k,true);
  if(key == ' '){
    camara *= -1;
  }
}
 void keyReleased(){
   movimiento(keyCode,false);
 }
//Método para controlar el movimiento.
 void movimiento(int k, boolean aux){
  if (k == UP) arriba = aux;
  else if (k == DOWN) abajo = aux;
  else if (k == LEFT) izquierda = aux;
  else if (k == RIGHT) derecha = aux;
  else if (k == CONTROL) delante = aux;
  else if (k == SHIFT) detras = aux;
  else if (k == ENTER) value = 0;
 }
//Método  para mover la nave.
  void moverNave(){
    if(camara == -1){
            profundidad += ( derecha? SPX : 0) - (izquierda? SPX : 0);
            horizontal +=(arriba? SPY : 0)-( abajo? SPY : 0);
            vertical  += (delante? SPZ : 0)-(detras? SPZ : 0)  ;
    }else{
            horizontal += ( derecha? SPX : 0) - (izquierda? SPX : 0);
            vertical += ( abajo? SPY : 0) - (arriba? SPY : 0);
    }  

  }
