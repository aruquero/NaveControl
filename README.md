# Nave Sistema Solar

![N|Solid](https://i.gyazo.com/c1ebc76c699252789da35563f5f69753.jpg)

# Indice

  - Introducción
  - La aplicación
  - Decisiones de diseño
  - Tutorial
  - Gif sobre el funcionamiento

# Informe

**Introducción**:

En esta cuarta entrega se nos ha propuesto la implementación de una nave funcional. Esta nave puede navegar en nuestro sistema solar en dos vistas, una en tercera persona y otra en primera persona. Cada vista tiene sus controles propios para favorecer al movimiento.

**La aplicación**:

Nuestra aplicación se fundamenta en una clase planeta que es la responsable de la gestión mayoritaria de la aplicación.
Nuestra aplicación empieza con un planeta "Sol" el cual tiene varios planetas (máximo 10), que giran a su alrededor. A su vez, estos planetas pueden tener satélites que orbiten a su al rededor.
Nuestra aplicación se fundamenta en la clase Planeta, para la generación y control de los respectivos planetas. Esta clase ya fue explicada en la anterior entrega.
En esta ocasión hemos implementado una nave que puede navegar libremente por nuestro sistema solar. En este caso la nave es una caza Tie de la guerra de las galaxias.
![N|Solid](https://i.gyazo.com/8777fcff4da1a44ffba38edf8d415a4e.jpg)

En primera instancia comenzamos con una vista en tercera persona de la nave, esta vista nos permite unicamente movernos en los ejes "X" e "Y", es decir, un movimiento bidimensional para nuestra nave y así poder desplazarnos vertical y horizontalmente.

Posteriormente pulsando la tecla "espacio" podemos acceder al modo en primera persona, este modo nos añade un eje adicional en el movimiento de la nave, la profundidad o también denominado eje "Z". Este nuevo movimiento nos permite un movimiento en los 3 ejes nos permite una completa libertad de movimiento.

**Decisiones de diseño**:

Se ha decidido implementar una vista lateral con la nave volteada para favorecer el movimiento y la transición al pasar a primera persona, esto ayuda a mantener una orientación de donde se encuentra la nave y así no perder las proporciones del sistema. En primera persona los controles de las flechas se invierten para dar paso al "Control" y "Shift" como teclas de movmiento vertical, mientras que las flechas continuan con su funcion sobre el eje "X" y "Z".

![N|Solid](https://i.gyazo.com/bd5985020a59bdae5119499050f8a65e.jpg)

**Tutorial**

Este apartado de tutorial se divide en dos partes, la primera y la tercera persona:
Primera persona:
  -Movimiento con las flechas del teclado.
Tercera persona:
  -Movimiento lateral y horizontal con las flechas del teclado.
  -Movimiento vertical, con el CONTROL y SHIFT respectivamente.
Para alternar entre las vistas usamos la tecla "espacio".

**Gif sobre el funcionamiento**

![Alt Text](https://i.gyazo.com/e649d74b9f4904642052ea87205ab64f.mp4)
