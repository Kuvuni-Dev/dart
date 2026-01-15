// ============================================
// ESTRUCTURAS DE CONTROL EN DART
// ============================================

void main() {
  print('╔═══════════════════════════════════════════╗');
  print('║  ESTRUCTURAS DE CONTROL EN DART          ║');
  print('╚═══════════════════════════════════════════╝\n');

  // ============================================
  // NIVEL 3: AVANZADO - Técnicas y patrones
  // ============================================
  print('\n\n═══ NIVEL 3: AVANZADO ═══\n');

  // 3.1 SWITCH con expresiones (Dart 3.0+)
  print('3.1 SWITCH EXPRESSION (Dart 3.0+):');
  String tipoVehiculo = 'coche';
  String mensaje = switch (tipoVehiculo) {
    'coche' => '🚗 Vehículo de cuatro ruedas',
    'moto' => '🏍️ Vehículo de dos ruedas',
    'bici' => '🚲 Vehículo sin motor',
    _ => '❓ Vehículo desconocido',
  };
  print(mensaje);

  // 3.2 Pattern matching con switch
  print('\n3.2 PATTERN MATCHING CON SWITCH:');
  dynamic valor = "Manolo";
  switch (valor) {
    case int n when n > 0:
      print('✓ Número positivo: $n');
      break;
    case int n when n < 0:
      print('✗ Número negativo: $n');
      break;
    case String s:
      print('📝 Es un texto: $s');
      break;
    default:
      print('❓ Tipo desconocido');
  }

  // 3.3 Bucle con etiquetas (labels)
  print('\n3.3 BUCLES CON ETIQUETAS:');
  externo:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        print('⛔ Break externo en [$i, $j]');
        break externo; // Sale de ambos bucles
      }
      print('[$i, $j]');
    }
  }

  // 3.4 WHILE con condiciones complejas
  print('\n3.4 WHILE CON CONDICIONES COMPLEJAS:');
  int intentos = 0;
  bool exito = false;
  while (intentos < 5 && !exito) {
    intentos++;
    print('Intento $intentos');
    if (intentos == 3) {
      exito = true;
      print('✓ Éxito alcanzado');
    }
  }

  // 3.5 FOR con múltiples variables
  print('\n3.5 FOR CON MÚLTIPLES VARIABLES:');
  for (int i = 0, j = 10; i < 5; i++, j--) {
    print('i=$i, j=$j');
  }

  // 3.6 Iteración sobre Map
  print('\n3.6 ITERACIÓN SOBRE MAP:');
  Map<String, int> edades = {'Ana': 25, 'Luis': 30, 'María': 28};

  // Método 1: entries
  for (var entry in edades.entries) {
    print('${entry.key} tiene ${entry.value} años');
  }

  // Método 2: keys
  print('\nSolo claves:');
  for (var nombre in edades.keys) {
    print('Nombre: $nombre');
  }

  // Método 3: values
  print('\nSolo valores:');
  for (var edad in edades.values) {
    print('Edad: $edad');
  }

  // 3.7 forEach con funciones anónimas
  print('\n3.7 forEach CON FUNCIONES ANÓNIMAS:');
  List<int> numeros = [1, 2, 3, 4, 5];
  numeros.forEach((numero) {
    print('Número × 2 = ${numero * 2}');
  });

  numeros.forEach(
    (numero) => print('\nFunción flecha.\nNúmero × 2 = ${numero * 2}'),
  );

  // 3.8 where - filtrado con condiciones
  print('\n3.8 WHERE (filtrado):');
  var pares = numeros.where((n) => n % 2 == 0);
  print('Números pares: $pares');

  // 3.9 Condicional con null-safety
  print('\n3.9 CONDICIONALES CON NULL-SAFETY:');
  String? nombre;
  if (nombre == null) {
    print('⚠️ Nombre es null');
  }

  String? apellido = 'García';
  if (apellido != null) {
    print('✓ Apellido: $apellido');
  }

  // 3.10 Assert (solo en modo debug)
  print('\n3.10 ASSERT (validaciones en desarrollo):');
  int velocidad = 140;
  /* 
   * El siguiente assert lanzará un error si la condición es falsa.
   * Útil para validar supuestos durante el desarrollo.
  */
  assert(
    velocidad <= 120,
    'Velocidad excede límite',
  ); // Solo corre en debug si la condición es falsa
  print('✓ Velocidad válida: $velocidad km/h');

  // 3.11 SWITCH con múltiples condiciones
  print('\n3.11 SWITCH CON MÚLTIPLES CONDICIONES:');
  int mes = 12;
  String estacion = switch (mes) {
    12 || 1 || 2 => '❄️ Invierno',
    3 || 4 || 5 => '🌸 Primavera',
    6 || 7 || 8 => '☀️ Verano',
    9 || 10 || 11 => '🍂 Otoño',
    _ => '❓ Mes inválido',
  };
  print('Mes $mes: $estacion');

  // 3.12 Guard clauses (clausulas de guarda)
  // ¿Qué es una guard clause?
  // Es una verificación al inicio de una función que, si se cumple, interrumpe la ejecución mediante return, throw, continue, etc.

  void procesarPedido(int? cantidad) {
    // Salida temprana si es null
    if (cantidad == null) {
      print('⚠️ Cantidad no proporcionada');
      return;
    }

    // Salida temprana si es inválida
    if (cantidad <= 0) {
      print('❌ Cantidad debe ser positiva');
      return;
    }

    // Lógica principal solo si pasa las validaciones
    print('✓ Procesando pedido de $cantidad unidades');
  }

  print('\n3.12 GUARD CLAUSES (salidas tempranas):');
  procesarPedido(null);
  procesarPedido(0);
  procesarPedido(5);

  // 3.13 Switch expression con records (Dart 3.0+)
  print('\n3.13 SWITCH CON RECORDS:');

  // Un record es una estructura ligera que agrupa valores sin necesidad de crear una clase.
  // Ejemplo: (int, int) representa una tupla de dos enteros.
  // Otros ejemplos de records: (String, double), (bool, List<int>), etc.
  /*Un record es un tipo de dato compuesto, inmutable y sin identidad, que agrupa varios valores bajo una sola unidad.
   
   No necesita clases, constructores ni boilerplate.
   (Boilerplate es todo el código repetitivo, estándar o ceremonial que 
   debes escribir una y otra vez para que algo funcione, aunque no aporte lógica de negocio real.
   Es ese código que “hay que poner porque sí”, porque el lenguaje, el framework o la arquitectura lo exige.
   Ahora, data classes, records y otros mecanismos modernos buscan reducir el boilerplate al mínimo posible.
   ).

   Se define usando paréntesis y puede contener valores posicionales y/o nombrados.

   var persona = ('Ana', 30);
   Ese record contiene dos valores: un String y un int.

    🏷️ Tipos de records
    Dart soporta tres formas:

    1. Records posicionales

    var coordenadas = (10, 20);
    Acceso:
    coordenadas.$1; // 10
    coordenadas.$2; // 20

    2. Records nombrados

    var usuario = (nombre: 'Ana', edad: 30);

    usuario.nombre;
    usuario.edad;

    3. Records mixtos

    var datos = ('Ana', edad: 30, true);

    dart
    datos.$1;     // 'Ana'
    datos.edad;   // 30
    datos.$2;     // true
  */
  var coordenada = (2, 3);
  String cuadrante = switch (coordenada) {
    (int x, int y) when x > 0 && y > 0 => 'Cuadrante I',
    (int x, int y) when x < 0 && y > 0 => 'Cuadrante II',
    (int x, int y) when x < 0 && y < 0 => 'Cuadrante III',
    (int x, int y) when x > 0 && y < 0 => 'Cuadrante IV',
    _ => 'Sobre un eje',
  };
  print('($coordenada): $cuadrante');

  // 3.14 Iteración con indice y valor de un iterable
  /* Iterables en Dart
     Un iterable es una colección de elementos que se pueden recorrer uno a uno.
     List<T>
     Set<T>
     Iterable<T>
     MapEntry<K, V> dentro de map.entries
  */
  //Cualquier clase que implemente Iterable
  print('\n3.14 ITERACIÓN CON ÍNDICE Y VALOR:');
  List<String> colores = ['Rojo', 'Verde', 'Azul'];

  /*colores.indexed
    indexed es una extensión de Iterable que devuelve un iterable de records posicionales con esta forma:
    (int, T) T es simplemente un nombre convencional que se usa para representar un tipo genérico.
    Es decir, cada elemento es un record con:
    $1 → índice
    $2 → valor
  */

  for (var (index, color) in colores.indexed) {
    print('$index: $color');
  }

  // 3.15 Control de flujo con try-catch

  int dividir(int a, int b) {
    if (b == 0) {
      throw Exception('División por cero no permitida');
    }
    return a ~/ b;
  }

  print('\n3.15 CONTROL DE FLUJO CON TRY-CATCH:');
  try {
    int resultado = dividir(10, 2);
    print('✓ Resultado: $resultado');

    int error = dividir(10, 0);
    print('Este mensaje no se imprime');
  } catch (e) {
    print('❌ Error capturado: $e');
  } finally {
    print('🔚 Bloque finally siempre se ejecuta');
  }
}