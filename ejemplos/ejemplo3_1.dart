// ============================================
// ESTRUCTURAS DE CONTROL EN DART
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

}

