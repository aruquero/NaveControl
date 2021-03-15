//Clase encagarcada de gestionar los planetas
class Planeta{
 PImage IMG;                           //Textura de los planetas
 PShape planet;                        //Pshape de cada planeta
 float r, ang, d , v, h;               //radio, angulo de rotación, distancia con respecto a su planeta "padre", velocidad y altura con respecto al eje del planeta "padre".
 int contador;                         //variable destinada a la gestión del array de almacenamiento
 Planeta[] aux = new Planeta[10];      //array de planetas de un planeta "padre", este array gestiona los astros que giran al rededor de otro, por ejemplo, los planetas con respecto al sol.
  
  //Constructor de la clase planeta.
  Planeta(float r, float d, float v,float h, String img){
   this.r = r;
   this.d = d;
   this.v = v;
   this.h = h;
   contador = 0;
   IMG = loadImage(img);
  }
  
  //Método encargado de mostrar los planetas a medida que rotan
  //El for de la parte inferior se encarga de llamar de manera recursiva a los posibles satélites de los planetas.
  void show(){
    pushMatrix();
    noStroke();
    fill(255);
    rotate(ang,0,1,0);
    translate(0,h,d);
    planet = createShape(SPHERE,r);
    planet.setTexture(IMG);
    shape(planet);
    if(contador != 0){
      for(int i = 0; i< contador; i++){
        aux[i].show();
      }
    }
    popMatrix();
  }
  
  //Método que añade un planeta al sistema solar, o una luna a un planeta, dependiendo del nivel de gestión.
  void add(Planeta p){
    if(contador < aux.length){
        aux[contador] = p;
        contador++;
    }else{
      println("Límite de planetas alcanzado");
    }
  }
  
  //Método que actuliza el ángulo de rotación de los astros.
  void orbitar(){
     ang = ang + v;
     if(contador != 0){
        for(int i = 0; i < contador;i++){
            aux[i].orbitar();
        }
     }
  }
  
}
