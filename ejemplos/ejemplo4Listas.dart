/*
Listas en Dart:

- Definición: Colecciones ordenadas de elementos accesibles por índice.
- Creación: Usando literales de lista [], List.filled(), List.generate(), etc.
- Tipos: Listas de longitud fija (growable: false) y listas dinámicas (growable: true).
- Acceso: A través de índices (lista[0], lista.length, lista.first, lista.last).
- Métodos comunes:
  - Consulta: isEmpty, isNotEmpty, contains(), indexOf(), lastIndexOf()
  - Modificación: add(), addAll(), insert(), insertAll(), remove(), removeAt(), removeLast(), removeRange()
  - Transformación: map(), where(), forEach(), join(), sort(), reversed, sublist(), toSet(), expand()
  - Búsqueda: firstWhere(), lastWhere(), singleWhere(), any(), every()
*/

void main() {
  // Lista de longitud fija o no
  var listaFija = List<int>.filled(
    3,
    0,
    growable: true,
  ); // 3 elementos inicializados en 0
  //Growable: false. Significa que la lista no puede cambiar de tamaño.
  //No puedes hacer add(), remove(), etc.
  listaFija[0] = 10;
  listaFija[1] = 20;
  listaFija[2] = 30;
  listaFija.add(100); // Error: Fuera de rango si growable es false

  print('Lista fija: $listaFija');
  print(listaFija.first);
  print(listaFija.hashCode);
  /*Un hashCode es un número entero que representa el estado interno 
  de un objeto para poder usarlo en estructuras basadas en hashing, como Set o Map.
  Es una especie de huella digital numérica del objeto.
  */

  // Lista dinámica (crece automáticamente)
  var listaDinamica = <String>[];
  listaDinamica.add('Dart');
  listaDinamica.add('Flutter');
  listaDinamica.add('Backend');
  print('Lista dinámica: $listaDinamica');

  // Acceder a elementos
  print('Primer elemento: ${listaDinamica.first}');
  print('Último elemento: ${listaDinamica.last}');

  // Recorrer lista
  for (var item in listaDinamica) {
    print('Elemento: $item');
  }

  // Longitud de la lista
  print('Longitud de la lista dinámica: ${listaDinamica.length}');

  print('=== MÉTODOS DE CONSULTA ===');
  var numeros = [1, 2, 3, 4, 5, 3];

  // isEmpty - Verifica si está vacía
  print('¿Está vacía? ${numeros.isEmpty}'); // false

  // isNotEmpty - Verifica si tiene elementos
  print('¿Tiene elementos? ${numeros.isNotEmpty}'); // true

  // contains() - Comprueba si existe un elemento
  print('¿Contiene 3? ${numeros.contains(3)}'); // true

  // indexOf() - Posición del primer elemento
  print('Índice del 3: ${numeros.indexOf(3)}'); // 2

  // lastIndexOf() - Última posición del elemento
  print('Última posición del 3: ${numeros.lastIndexOf(3)}'); // 5

  print('\n=== MÉTODOS DE MODIFICACIÓN ===');
  var lista = <int>[10, 20, 30];

  // add() - Añade al final
  lista.add(40);
  print('Después de add(40): $lista'); // [10, 20, 30, 40]

  // addAll() - Añade múltiples elementos
  lista.addAll([50, 60]);
  print('Después de addAll([50, 60]): $lista'); // [10, 20, 30, 40, 50, 60]

  // insert() - Inserta en posición específica
  lista.insert(1, 15);
  print('Después de insert(1, 15): $lista'); // [10, 15, 20, 30, 40, 50, 60]

  // insertAll() - Inserta múltiples en posición
  lista.insertAll(2, [17, 18]);
  print(
    'Después de insertAll(2, [17, 18]): $lista',
  ); // [10, 15, 17, 18, 20, 30, 40, 50, 60]

  // remove() - Elimina la primera ocurrencia
  lista.remove(20);
  print('Después de remove(20): $lista'); // [10, 15, 17, 18, 30, 40, 50, 60]

  // removeAt() - Elimina por índice
  lista.removeAt(0);
  print('Después de removeAt(0): $lista'); // [15, 17, 18, 30, 40, 50, 60]

  // removeLast() - Elimina el último
  lista.removeLast();
  print('Después de removeLast(): $lista'); // [15, 17, 18, 30, 40, 50]

  // removeRange() - Elimina un rango
  lista.removeRange(1, 3);
  print('Después de removeRange(1, 3): $lista'); // [15, 30, 40, 50]

  print('\n=== MÉTODOS DE TRANSFORMACIÓN ===');
  var valores = [1, 2, 3, 4, 5];

  // map() - Transforma cada elemento
  var duplicados = valores.map((x) => x * 2).toList();
  print('map((x) => x * 2): $duplicados'); // [2, 4, 6, 8, 10]

  // where() - Filtra elementos
  var pares = valores.where((x) => x % 2 == 0).toList();
  print('where(x % 2 == 0): $pares'); // [2, 4]

  // forEach() - Itera sobre elementos
  print('forEach - Imprime cada elemento:');
  valores.forEach((x) => print('  Elemento: $x'));

  // join() - Convierte a String con separador
  var texto = valores.join('-');
  print('join("-"): $texto'); // 1-2-3-4-5

  // sort() - Ordena la lista
  var desordenado = [3, 1, 4, 1, 5, 9];
  desordenado.sort();
  print('sort(): $desordenado'); // [1, 1, 3, 4, 5, 9]

  // reversed - Invierte el orden
  var invertida = [1, 2, 3];
  //invertida = invertida.reversed.toList();
  print('reversed: ${invertida.reversed}'); // [3, 2, 1]

  // sublist() - Obtiene una sublista
  var sublista = valores.sublist(1, 4);
  print('sublist(1, 4): $sublista'); // [2, 3, 4]

  // toSet() - Convierte a Set (sin duplicados)
  var conDuplicados = [1, 2, 2, 3, 3, 3];
  var sinDuplicados = conDuplicados.toSet().toList();
  print('toSet().toList(): $sinDuplicados'); // [1, 2, 3]

  // expand() - Expande cada elemento
  var expandido = valores.expand((x) => [x, x]).toList();
  print('expand((x) => [x, x]): $expandido'); // [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]

  print('\n=== MÉTODOS DE BÚSQUEDA ===');
  var numeros2 = [2, 4, 6, 8, 10, 12];

  // firstWhere() - Primer elemento que cumple condición
  var primerMayor5 = numeros2.firstWhere((x) => x > 5);
  print('firstWhere(x > 5): $primerMayor5'); // 6

  // lastWhere() - Último elemento que cumple condición
  var ultimoMenor10 = numeros2.lastWhere((x) => x < 10);
  print('lastWhere(x < 10): $ultimoMenor10'); // 8

  // singleWhere() - Encuentra un único elemento
  var especial = [1, 2, 3, 100, 4, 5];
  var elUnico = especial.singleWhere((x) => x > 50);
  print('singleWhere(x > 50): $elUnico'); // 100

  // any() - ¿Algún elemento cumple la condición?
  var hayPar = valores.any((x) => x % 2 == 0);
  print('any(x % 2 == 0): $hayPar'); // true

  // every() - ¿Todos cumplen la condición?
  var todosMayoresA0 = valores.every((x) => x > 0);
  print('every(x > 0): $todosMayoresA0'); // true

  // clear() - Elimina todos los elementos
  var paraLimpiar = [1, 2, 3];
  paraLimpiar.clear();
  print('clear(): $paraLimpiar'); // []

  print('=== FORMAS DE CREAR LISTAS ===\n');

  // 1. Lista literal vacía
  var lista1 = <int>[];
  print('Lista vacía: $lista1');

  // 2. Lista literal con elementos
  var lista2 = [1, 2, 3, 4, 5];
  print('Lista con elementos: $lista2');

  // 3. Lista con tipo específico
  List<String> nombres = ['Ana', 'Bruno', 'Carlos'];
  print('Lista de Strings: $nombres');

  // 4. Lista con el constructor List()   // Obsoleta en versiones recientes de Dart
  // var lista4 = List<int>(5); // Crea lista de 5 elementos
  //print('Lista con constructor (antes de llenar): $lista4');

  // 5. Lista con List.filled() - llena con un valor inicial
  var lista5 = List<int>.filled(3, 0, growable: true);
  lista5[0] = 10;
  lista5[1] = 20;
  lista5[2] = 30;
  print('Lista con filled(): $lista5');

  // 6. Lista con List.generate() - genera elementos con una función
  var lista6 = List<int>.generate(5, (i) => i * 2);
  print('Lista con generate(i * 2): $lista6'); // [0, 2, 4, 6, 8]

  // 7. Lista con List.of() - copia elementos de otro iterable
  var numeros3 = [1, 2, 3];
  var copia = List.of(numeros3);
  print('Copia con List.of(): $copia');

  // 8. Lista con List.from() - similar a List.of()
  var otraCopia = List.from(numeros3);
  print('Copia con List.from(): $otraCopia');

  // 9. Lista dinámica (growable) vs fija
  var dinamica = <int>[]; // Es growable por defecto
  dinamica.add(1);
  dinamica.add(2);
  print('Lista dinámica: $dinamica');

  // 10. Lista con spread operator (...)
  var lista10a = [1, 2, 3];
  var lista10b = [0, ...lista10a, 4, 5];
  print('Con spread operator: $lista10b'); // [0, 1, 2, 3, 4, 5]

  // 11. Lista con spread operator condicional
  var incluir = true;
  var lista11 = [1, 2, if (incluir) 3, 4];
  print('Con spread condicional: $lista11'); // [1, 2, 3, 4]

  // 12. Lista vacía con tipo genérico
  List<double> decimales = [];
  decimales.add(1.5);
  decimales.add(2.5);
  print('Lista de decimales: $decimales');

  print('\n=== CARACTERÍSTICAS IMPORTANTES ===\n');

  // growable: true (por defecto) - puede cambiar de tamaño
  var creciente = <int>[1, 2, 3];
  creciente.add(4);
  print('Growable (puede crecer): $creciente');

  // growable: false - tamaño fijo
  var fija = List<int>.filled(3, 0, growable: false);
  fija[0] = 10;
  // fija.add(20); // Error: No se puede añadir
  print('Fija (tamaño fijo): $fija');

  // Acceso a elementos
  print('\n=== ACCESO A ELEMENTOS ===\n');
  var datos = [10, 20, 30, 40, 50];
  print('Primer elemento: ${datos.first}');
  print('Último elemento: ${datos.last}');
  print('Elemento en índice 2: ${datos[2]}');
  print('Longitud: ${datos.length}');

  // Como modificar el método List.contains()

  //Método 1
  print('\n=== MODIFICAR MÉTODO contains() ===\n');
  var palabras = ['Dart', 'Flutter', 'Dartlang'];
  bool containsIgnoreCase0(String palabra) {
    for (var p in palabras) {
      if (p.toLowerCase() == palabra.toLowerCase()) {
        return true;
      }
    }
    return false;
  }

  print('Contiene "dart" (ignore case): ${containsIgnoreCase0("dart")}'); // true
  print('Contiene "Java": ${containsIgnoreCase0("Java")}'); // false

  //Método 2:  Usando any()
  /*¿Qué hace exactamente any?
  Evalúa una función (un predicado) sobre cada elemento de la lista.
  Si algún elemento cumple la condición → devuelve true.
  Si ninguno la cumple → devuelve false.
  */
  bool containsIgnoreCase2(String palabra) =>
      palabras.any((p) => p.toLowerCase() == palabra.toLowerCase());
  print(
    'Contiene "FLUTTER" (ignore case): ${containsIgnoreCase2("FLUTTER")}',
  ); // true
  print('Contiene "Python": ${containsIgnoreCase2("Python")}'); // false

  bool containsIgnoreCase3(String palabra, List<String> lista) =>
      lista.any((p) => p.toLowerCase() == palabra.toLowerCase());
  print(
    'Contiene "FLUTTER" (ignore case): ${containsIgnoreCase3("FLUTTER", palabras)}',
  ); // true
  print(
    'Contiene "Python": ${containsIgnoreCase3("Python", palabras)}',
  ); // false

  //Método 3: Usando extension
  
  print('\n=== MODIFICAR MÉTODO contains() CON EXTENSIONS ===\n');
  print(
    'Contiene "DARTLANG" (ignore case): ${palabras.containsIgnoreCase("DARTLANG")}',
  ); // true
  print(
    'Contiene "Ruby": ${palabras.containsIgnoreCase("Ruby")}',
  ); // false

}

// Tiene que estar fuera del main(). No se pueden sobreescribir métodos del SDK.
extension StringListExtensions on List<String> {
  bool containsIgnoreCase(String value) {
    return any((e) => e.toLowerCase() == value.toLowerCase());
  }
}