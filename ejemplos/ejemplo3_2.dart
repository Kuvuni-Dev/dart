// ============================================
// ESTRUCTURAS DE CONTROL EN DART
// ============================================

void main() {
  print('╔═══════════════════════════════════════════╗');
  print('║  ESTRUCTURAS DE CONTROL EN DART          ║');
  print('╚═══════════════════════════════════════════╝\n');

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
}

  