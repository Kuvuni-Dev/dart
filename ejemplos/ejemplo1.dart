/** 
 Funcion de inicio del programa
 Autor: Julián
 Fecha: 14/01/2026
 */

void main(List<String> argumentos){
  var variable = "Variable"; //Esto es un comentario de línea
  /* Buenos días
  hoy es miércoles
  */
  print("Hola ${argumentos.isNotEmpty ? argumentos[0] : "invitado"}");

  //Buenas prácticas para nombrar variables.
  var mand_5656HJJJJJ = "Algo";
  String nombreApellidos = "Julián";
  double precioConIva = 43.3;
  double precio_sin_iva = 46.33;
  //double class = 14.56; //No válido, palabras reservadas.

  //Tipos de datos en Dart.

  int edad = 25; //Enteros
  double precio = 25.4; // Decimal
  num precio2 = 15; //Puede ser decimal o entero.

  edad = 26;
  // edad = 27.3; No permitido.
  precio2 = 25.7;

  // Booleanos

  bool esCierto = true;
  esCierto = false;

  // String o cadena de caracteres

  String texto1 = "Esto es un texto. \nAhora estoy en otra línea";
  String texto2 = 'Esto es otro texto';
  String texto3 = ''' 
  Esto 
      es 
          un 
              texto
                  multilínea
                  ''';

  print(texto1);
  print(texto2);
  print(texto3);

  //Listas
  List<String> frutas = ["Platano", "Fresa", 'Manzana'];
  List<int> edades;
  edades=[];
  edades.add(18);
  edades.add(54);
  print(edades);
  //Mapas
  Map<String,int> ages = {'Juan': 26, 'Manolo': 33, "José": 0};
  print(ages);
  ages['Maria'] = 45;
  print(ages);
  ages['Juan'] = 59;
  print(ages);
  //Sets
  Set<String> colores = {'Azul', "Amarillo", "Verde"};
  print(colores);
  colores.add("Azul");
  print(colores);
  colores.add("Naranja");
  print(colores);
  //dynamic. Puede cualquier cualquier dato y también null

  dynamic dato = "Soy un texto";
  dato = true;
  dato = 45;
  dato = null;

  //Object. Puede ser cualquier de dato, menos null

  Object dato2 = 45;
  dato2 = false;
  dato2 = {45: "Mapa"};
  //dato2 = null; //error

  //Declarar una variable que puede ser null

  int? precio4;
  precio4 = null;

  //Variables inmutables y constantes.

  // const . Es una constante en tiempo de compilación.
  // final. Es una constante en tiempo de ejecución.

  //const ahora = DateTime.now(); //No permitido
  final DateTime ahora = DateTime.now();
  //ahora = DateTime.now();  No permitido. No se puede modificar el valor de un final
  print("La fecha de ahora es $ahora");
  const String ciudad = "Madrid";
  //ciudad = "Getafe"; No permitido.

  //late
  late DateTime luego;
  //Esta variable no la inicializo ahora, pero te prometo que la inicilizaré
  //más tarde.

  //Declarar variables de forma explicita o inferido.

  //Tipo inferido
  var color = "Naranja";
  var dato18;
  print("La variable dato18 es de tipo: ${dato18.runtimeType}");
  dato18 = true;
  print("La variable dato18 es de tipo: ${dato18.runtimeType}");
  dato18 = null;
  print("La variable dato18 es de tipo: ${dato18.runtimeType}");
  dato18 = 45;
  print("La variable dato18 es de tipo: ${dato18.runtimeType}");
  dato18 = DateTime.now();
  print("La variable dato18 es de tipo: ${dato18.runtimeType}");

  //Tipo implicito

  String? text18;
  text18="Soy texto18";
  print(text18);

}