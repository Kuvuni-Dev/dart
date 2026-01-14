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
    _ => '❓ Vehículo desconocido'
  };
  print(mensaje);

  // 3.2 Pattern matching con switch
  print('\n3.2 PATTERN MATCHING CON SWITCH:');
  dynamic valor = 42;
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
  Map<String, int> edades = {
    'Ana': 25,
    'Luis': 30,
    'María': 28
  };

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
  int velocidad = 100;
  assert(velocidad <= 120, 'Velocidad excede límite'); // Solo corre en debug
  print('✓ Velocidad válida: $velocidad km/h');

  // 3.11 SWITCH con múltiples condiciones
  print('\n3.11 SWITCH CON MÚLTIPLES CONDICIONES:');
  int mes = 12;
  String estacion = switch (mes) {
    12 || 1 || 2 => '❄️ Invierno',
    3 || 4 || 5 => '🌸 Primavera',
    6 || 7 || 8 => '☀️ Verano',
    9 || 10 || 11 => '🍂 Otoño',
    _ => '❓ Mes inválido'
  };
  print('Mes $mes: $estacion');

  // 3.12 Guard clauses (clausulas de guarda)
  print('\n3.12 GUARD CLAUSES (salidas tempranas):');
  procesarPedido(null);
  procesarPedido(0);
  procesarPedido(5);

  // 3.13 Switch expression con records (Dart 3.0+)
  print('\n3.13 SWITCH CON RECORDS:');
  var coordenada = (2, 3);
  String cuadrante = switch (coordenada) {
    (int x, int y) when x > 0 && y > 0 => 'Cuadrante I',
    (int x, int y) when x < 0 && y > 0 => 'Cuadrante II',
    (int x, int y) when x < 0 && y < 0 => 'Cuadrante III',
    (int x, int y) when x > 0 && y < 0 => 'Cuadrante IV',
    _ => 'Sobre un eje'
  };
  print('($coordenada): $cuadrante');

  // 3.14 Iteración con enumerate (simulado)
  print('\n3.14 ITERACIÓN CON ÍNDICE Y VALOR:');
  List<String> colores = ['Rojo', 'Verde', 'Azul'];
  for (var (index, color) in colores.indexed) {
    print('$index: $color');
  }

  // 3.15 Control de flujo con try-catch
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
  print('\n4.2 SWITCH CON DESTRUCTURING:');
  var punto = {'x': 10, 'y': 20};
  procesarPunto(punto);

  // 4.3 Bucles con generadores (yield)
  print('\n4.3 GENERADORES CON YIELD:');
  for (var numero in generarNumeros(5)) {
    print('Generado: $numero');
  }

  // 4.4 Stream con control de flujo
  print('\n4.4 STREAMS (asíncrono):');
  ejemploStream();

  // 4.5 Recursión con estructuras de control
  print('\n4.5 RECURSIÓN:');
  int factorial = calcularFactorial(5);
  print('Factorial de 5: $factorial');

  // 4.6 Switch exhaustivo con sealed classes (simulado)
  print('\n4.6 PATTERN MATCHING EXHAUSTIVO:');
  procesarEstado(EstadoCarga.cargando());
  procesarEstado(EstadoCarga.exitoso('Datos cargados'));
  procesarEstado(EstadoCarga.error('Error de red'));

  // 4.7 Bucle con async/await
  print('\n4.7 BUCLE ASÍNCRONO:');
  procesarTareasAsync();

  print('\n\n╔═══════════════════════════════════════════╗');
  print('║  FIN DE EJEMPLOS                          ║');
  print('╚═══════════════════════════════════════════╝');
}

// ============================================
// FUNCIONES AUXILIARES
// ============================================

// Guard clauses
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

// División con control de errores
int dividir(int a, int b) {
  if (b == 0) {
    throw Exception('División por cero no permitida');
  }
  return a ~/ b;
}

// Procesar punto con destructuring
void procesarPunto(Map<String, int> punto) {
  var x = punto['x'];
  var y = punto['y'];

  switch ((x, y)) {
    case (0, 0):
      print('📍 Origen');
    case (var px, 0) when px != null:
      print('📍 Sobre eje X en ($px, 0)');
    case (0, var py) when py != null:
      print('📍 Sobre eje Y en (0, $py)');
    case (var px, var py) when px != null && py != null:
      print('📍 Punto en ($px, $py)');
    default:
      print('❓ Punto inválido');
  }
}

// Generador con yield
Iterable<int> generarNumeros(int max) sync* {
  for (int i = 1; i <= max; i++) {
    yield i * i; // Genera cuadrados
  }
}

// Ejemplo de Stream
void ejemploStream() async {
  Stream<int> stream = Stream.periodic(
    Duration(milliseconds: 100),
    (count) => count,
  ).take(3);

  print('Iniciando stream...');
  await for (var valor in stream) {
    print('Stream valor: $valor');
  }
  print('Stream finalizado');
}

// Recursión
int calcularFactorial(int n) {
  if (n <= 1) return 1;
  return n * calcularFactorial(n - 1);
}

// Simulación de sealed class para pattern matching
class EstadoCarga {
  final String tipo;
  final String? mensaje;

  EstadoCarga._(this.tipo, [this.mensaje]);

  factory EstadoCarga.cargando() => EstadoCarga._('cargando');
  factory EstadoCarga.exitoso(String msg) => EstadoCarga._('exitoso', msg);
  factory EstadoCarga.error(String msg) => EstadoCarga._('error', msg);
}

void procesarEstado(EstadoCarga estado) {
  switch (estado.tipo) {
    case 'cargando':
      print('⏳ Cargando...');
      break;
    case 'exitoso':
      print('✓ ${estado.mensaje}');
      break;
    case 'error':
      print('❌ ${estado.mensaje}');
      break;
    default:
      print('❓ Estado desconocido');
  }
}

// Bucle asíncrono
Future<void> procesarTareasAsync() async {
  print('Iniciando tareas asíncronas...');
  
  List<String> tareas = ['Tarea 1', 'Tarea 2', 'Tarea 3'];
  
  for (var tarea in tareas) {
    await Future.delayed(Duration(milliseconds: 100));
    print('✓ Completada: $tarea');
  }
  
  print('Todas las tareas completadas');
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
 * - Generators (sync*, async*)
 * - Streams (await for)
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
