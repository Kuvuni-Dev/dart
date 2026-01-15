// ============================================
// ESTRUCTURAS DE CONTROL EN DART
// Desde Nivel Básico hasta Avanzado
// ============================================

void main() {
  print('╔═══════════════════════════════════════════╗');
  print('║  ESTRUCTURAS DE CONTROL EN DART          ║');
  print('╚═══════════════════════════════════════════╝\n');

  // ============================================
  // NIVEL 1: BÁSICO - Condicionales simples
  // ============================================
  print('═══ NIVEL 1: BÁSICO ═══\n');

  // 1.1 IF simple
  print('1.1 IF SIMPLE:');
  int edad = 18;
  if (edad >= 18) {
    print('✓ Eres mayor de edad');
  }

  // 1.2 IF-ELSE
  print('\n1.2 IF-ELSE:');
  int temperatura = 15;
  if (temperatura > 25) {
    print('☀️ Hace calor');
  } else {
    print('❄️ Hace frío');
  }

  // 1.3 IF-ELSE IF-ELSE
  print('\n1.3 IF-ELSE IF-ELSE:');
  int nota = 8;
  if (nota >= 9) {
    print('📚 Sobresaliente');
  } else if (nota >= 7) {
    print('📖 Notable');
  } else if (nota >= 5) {
    print('📝 Aprobado');
  } else {
    print('📕 Suspenso');
  }

  // 1.4 Bucle FOR básico
  print('\n1.4 BUCLE FOR BÁSICO:');
  for (int i = 1; i <= 5; i++) {
    print('Iteración $i');
  }

  // 1.5 Bucle WHILE básico
  print('\n1.5 BUCLE WHILE BÁSICO:');
  int contador = 1;
  while (contador <= 3) {
    print('Contador: $contador');
    contador++;
  }

  // 1.6 Bucle DO-WHILE
  print('\n1.6 BUCLE DO-WHILE:');
  int numero = 1;
  do {
    print('Número: $numero');
    numero++;
  } while (numero <= 3);

  // ============================================
  // NIVEL 2: INTERMEDIO - Estructuras más complejas
  // ============================================
  print('\n\n═══ NIVEL 2: INTERMEDIO ═══\n');

  // 2.1 SWITCH-CASE
  print('2.1 SWITCH-CASE:');
  String diaSemana = 'Lunes';
  switch (diaSemana) {
    case 'Lunes':
    case 'Martes':
    case 'Miércoles':
    case 'Jueves':
    case 'Viernes':
      print('📅 Día laboral');
      break;
    case 'Sábado':
    case 'Domingo':
      print('🎉 Fin de semana');
      break;
    default:
      print('⚠️ Día no válido');
  }

  // 2.2 FOR-IN (iterar colecciones)
  print('\n2.2 FOR-IN (Iterar listas):');
  List<String> frutas = ['Manzana', 'Naranja', 'Plátano'];
  for (String fruta in frutas) {
    print('🍎 $fruta');
  }

  // 2.3 FOR con índice y valor
  print('\n2.3 FOR con índice:');
  for (int i = 0; i < frutas.length; i++) {
    print('$i: ${frutas[i]}');
  }

  // 2.4 BREAK - salir del bucle
  print('\n2.4 BREAK (salir del bucle):');
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      print('⛔ Break en $i');
      break;
    }
    print('Número: $i');
  }

  // 2.5 CONTINUE - saltar iteración
  print('\n2.5 CONTINUE (saltar iteración):');
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      print('⏭️ Skip $i');
      continue;
    }
    print('Número: $i');
  }

  // 2.6 Condicionales con operadores lógicos
  print('\n2.6 CONDICIONALES CON OPERADORES LÓGICOS:');
  int edad2 = 25;
  bool tieneCarnet = true;
  if (edad2 >= 18 && tieneCarnet) {
    print('🚗 Puedes conducir');
  }

  bool esEstudiante = false;
  bool esMayorEdad = true;
  if (esEstudiante || esMayorEdad) {
    print('✓ Acceso permitido');
  }

  // 2.7 Bucles anidados
  print('\n2.7 BUCLES ANIDADOS:');
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('[$i, $j]');
    }
  }

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

  // ============================================
  // NIVEL 4: EXPERTO - Patrones avanzados
  // ============================================
  print('\n\n═══ NIVEL 4: EXPERTO ═══\n');

  // 4.1 Bucle infinito con control manual
  print('4.1 BUCLE INFINITO CON CONTROL:');
  int count = 0;
  while (true) {
    count++;
    print('Iteración infinita: $count');
    if (count >= 3) {
      print('⛔ Salida controlada');
      break;
    }
  }

  // 4.2 Switch con destructuring
  /*
  La desestructuración es una técnica que permite extraer valores de una estructura 
  (como un record, lista, mapa, objeto, etc.) y asignarlos directamente a variables 
  individuales de forma compacta y expresiva.
  */

  void procesarPunto(Map<String, int> punto) {
    // Extrae el valor de la clave 'x' del Map (puede ser int o null)
    var x = punto['x'];

    // Extrae el valor de la clave 'y' del Map (puede ser int o null)
    var y = punto['y'];

    // Crea un record (tupla) con los valores (x, y) para hacer pattern matching
    switch ((x, y)) {
      // Caso 1: Si x es 0 Y y es 0 → Punto en el origen de coordenadas
      case (0, 0):
        print('📍 Origen');

      // Caso 2: Si y es 0 pero x NO es 0 → Punto sobre el eje X
      // 'var px' captura el valor de x en la variable px
      // 'when px != null' es una guard clause que verifica que px no sea null
      case (var px, 0) when px != null:
        print('📍 Sobre eje X en ($px, 0)');

      // Caso 3: Si x es 0 pero y NO es 0 → Punto sobre el eje Y
      // 'var py' captura el valor de y en la variable py
      // 'when py != null' verifica que py no sea null
      case (0, var py) when py != null:
        print('📍 Sobre eje Y en (0, $py)');

      // Caso 4: x e y tienen valores diferentes de 0 → Punto en el plano
      // 'var px, var py' captura ambos valores
      // 'when px != null && py != null' verifica que ambos sean válidos
      case (var px, var py) when px != null && py != null:
        print('📍 Punto en ($px, $py)');

      // Caso por defecto: Si ninguna condición anterior coincide
      // (por ejemplo, si x o y son null)
      default:
        print('❓ Punto inválido');
    }
  }

  print('\n4.2 SWITCH CON DESTRUCTURING:');
  var punto = {'x': 10, 'y': 20};
  procesarPunto(punto);

  // 4.3 Recursión con estructuras de control

  // Recursión

  /*La recursión es una técnica en la que una función se llama a sí misma para
   resolver un problema dividiéndolo en subproblemas más pequeños. Es un concepto general 
   de programación, pero Dart lo soporta de forma natural y clara.
   Funciona especialmente bien cuando la solución de un problema depende de la solución 
   del mismo problema en una versión más simple.
  */

  int calcularFactorial(int n) {
    if (n <= 1) return 1;
    return n * calcularFactorial(n - 1);
  }

  print('\n4.3 RECURSIÓN:');
  int factorial = calcularFactorial(5);
  print('Factorial de 5: $factorial');

  print('\n\n╔═══════════════════════════════════════════╗');
  print('║  FIN DE EJEMPLOS                          ║');
  print('╚═══════════════════════════════════════════╝');
}

// ============================================
// RESUMEN DE ESTRUCTURAS DE CONTROL
// ============================================

/*
 * ESTRUCTURAS CONDICIONALES:
 * - if, else, else if
 * - switch-case
 * - switch expressions (Dart 3.0+)
 * - ternario: condición ? valor1 : valor2
 * - null-aware: ??, ??=, ?.
 * 
 * ESTRUCTURAS DE BUCLE:
 * - for: for (init; condición; incremento)
 * - for-in: for (var item in lista)
 * - while: while (condición)
 * - do-while: do { } while (condición)
 * - forEach: lista.forEach((item) => ...)
 * 
 * CONTROL DE FLUJO:
 * - break: sale del bucle/switch
 * - continue: salta a la siguiente iteración
 * - return: sale de la función
 * - throw: lanza excepción
 * - rethrow: relanza excepción
 * 
 * CARACTERÍSTICAS AVANZADAS:
 * - Pattern matching (Dart 3.0+)
 * - Guard clauses (when)
 * - Destructuring
 * - Records
 * - Try-catch-finally
 * 
 * MEJORES PRÁCTICAS:
 * 1. Usa guard clauses para salidas tempranas
 * 2. Prefiere switch expressions sobre switch-case cuando sea posible
 * 3. Evita bucles anidados profundos
 * 4. Usa break y continue con moderación
 * 5. Maneja excepciones apropiadamente
 * 6. Aprovecha pattern matching en Dart 3.0+
 * 7. Usa const cuando sea posible
 * 8. Prefiere for-in sobre for con índices cuando no necesites el índice
 */
