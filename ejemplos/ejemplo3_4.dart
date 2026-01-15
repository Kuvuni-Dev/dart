// ============================================
// ESTRUCTURAS DE CONTROL EN DART
// ============================================

void main() {
  print('╔═══════════════════════════════════════════╗');
  print('║  ESTRUCTURAS DE CONTROL EN DART          ║');
  print('╚═══════════════════════════════════════════╝\n');

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
