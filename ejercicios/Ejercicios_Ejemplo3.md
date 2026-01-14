# Ejercicios de Nivel Medio - Estructuras de Control en Dart

Basados en [ejemplo3Estructuras.dart](../examples/ejemplo3Estructuras.dart)

---

## Ejercicio 1: Sistema de Menú Interactivo 🍽️

Crea un programa con un menú que permita realizar diferentes operaciones hasta que el usuario decida salir.

**Requisitos:**
- Muestra un menú con 5 opciones más la opción de salir
- Usa switch-case para manejar las opciones
- Usa un bucle while o do-while para mantener el menú activo
- Lee la entrada del usuario desde la consola
- Implementa funcionalidad para cada opción

**Código base:**
```dart
import 'dart:io';

void main() {
  bool continuar = true;
  
  while (continuar) {
    print('\n╔═══════════════════════════════════════╗');
    print('║         MENÚ PRINCIPAL                ║');
    print('╚═══════════════════════════════════════╝');
    print('1. 🧮 Calculadora');
    print('2. 📅 Verificar día de la semana');
    print('3. 🔢 Tabla de multiplicar');
    print('4. 🎲 Número par o impar');
    print('5. 📊 Lista de números');
    print('0. ❌ Salir');
    
    stdout.write('\nSelecciona una opción: ');
    String? opcion = stdin.readLineSync();
    
    switch (opcion) {
      case '1':
        // TODO: Implementar calculadora
        break;
      case '2':
        // TODO: Implementar verificador de día
        break;
      case '3':
        // TODO: Implementar tabla de multiplicar
        break;
      case '4':
        // TODO: Implementar verificador par/impar
        break;
      case '5':
        // TODO: Implementar lista de números
        break;
      case '0':
        print('\n👋 ¡Hasta luego, Lucas!');
        continuar = false;
        break;
      default:
        print('❌ Opción inválida');
    }
  }
}
```

**Sugerencias para cada opción:**
1. **Calculadora**: Lee dos números y una operación (+, -, *, /)
2. **Día de la semana**: Lee un número (1-7) y muestra el día correspondiente
3. **Tabla de multiplicar**: Lee un número y muestra su tabla del 1 al 10
4. **Par o impar**: Lee un número y determina si es par o impar
5. **Lista de números**: Lee 5 números y muestra el mayor, menor y promedio

---

## Ejercicio 2: Validador de Contraseñas con Intentos 🔐

Crea un sistema que solicite una contraseña y permita hasta 3 intentos.

**Requisitos:**
- Define una contraseña correcta
- Lee la contraseña ingresada por el usuario
- Usa un bucle para permitir hasta 3 intentos
- Si acierta antes del tercer intento, muestra un mensaje de éxito
- Si falla los 3 intentos, bloquea el acceso
- Muestra cuántos intentos quedan después de cada fallo
- Usa break cuando la contraseña sea correcta

**Código base:**
```dart
import 'dart:io';

void main() {
  const String contrasenaCorrecta = 'Dart2026';
  int intentosMaximos = 3;
  int intentosRestantes = intentosMaximos;
  bool accesoPermitido = false;
  
  print('╔═══════════════════════════════════════╗');
  print('║     SISTEMA DE AUTENTICACIÓN          ║');
  print('╚═══════════════════════════════════════╝\n');
  
  // TODO: Implementa el bucle de intentos
  // Pistas:
  // - Usa while o for para controlar los intentos
  // - Lee la contraseña con stdin.readLineSync()
  // - Compara con la contraseña correcta
  // - Usa break si acierta
  // - Decrementa intentosRestantes en cada fallo
  
  // TODO: Muestra el resultado final
  // Si accesoPermitido es true, muestra mensaje de bienvenida
  // Si no, muestra mensaje de bloqueo
}
```

**Salida esperada (caso de fallo):**
```
╔═══════════════════════════════════════╗
║     SISTEMA DE AUTENTICACIÓN          ║
╚═══════════════════════════════════════╝

Intento 1 de 3
Ingresa la contraseña: hola
❌ Contraseña incorrecta. Te quedan 2 intentos.

Intento 2 de 3
Ingresa la contraseña: mundo
❌ Contraseña incorrecta. Te quedan 1 intentos.

Intento 3 de 3
Ingresa la contraseña: test
❌ Contraseña incorrecta. Te quedan 0 intentos.

🔒 ACCESO BLOQUEADO - Intentos agotados
```

---

## Ejercicio 3: Generador de Patrones con Bucles 🔷

Crea un programa que dibuje diferentes patrones usando bucles anidados.

**Requisitos:**
- Lee el tamaño del patrón desde la consola
- Dibuja al menos 4 patrones diferentes
- Usa bucles anidados (for dentro de for)
- Usa un menú para seleccionar el patrón

**Código base:**
```dart
import 'dart:io';

void main() {
  print('╔═══════════════════════════════════════╗');
  print('║     GENERADOR DE PATRONES             ║');
  print('╚═══════════════════════════════════════╝\n');
  
  stdout.write('Ingresa el tamaño (3-10): ');
  String? tamanoStr = stdin.readLineSync();
  int? tamano = int.tryParse(tamanoStr ?? '0');
  
  if (tamano == null || tamano < 3 || tamano > 10) {
    print('❌ Tamaño inválido');
    return;
  }
  
  print('\nSelecciona un patrón:');
  print('1. Cuadrado');
  print('2. Triángulo');
  print('3. Pirámide');
  print('4. Escalera');
  
  stdout.write('\nOpción: ');
  String? opcion = stdin.readLineSync();
  
  switch (opcion) {
    case '1':
      dibujarCuadrado(tamano);
      break;
    case '2':
      dibujarTriangulo(tamano);
      break;
    case '3':
      dibujarPiramide(tamano);
      break;
    case '4':
      dibujarEscalera(tamano);
      break;
    default:
      print('❌ Opción inválida');
  }
}

void dibujarCuadrado(int tamano) {
  print('\n🔷 CUADRADO:');
  // TODO: Dibuja un cuadrado de asteriscos
  // Ejemplo para tamano=5:
  // *****
  // *****
  // *****
  // *****
  // *****
}

void dibujarTriangulo(int tamano) {
  print('\n🔺 TRIÁNGULO:');
  // TODO: Dibuja un triángulo rectángulo
  // Ejemplo para tamano=5:
  // *
  // **
  // ***
  // ****
  // *****
}

void dibujarPiramide(int tamano) {
  print('\n🔼 PIRÁMIDE:');
  // TODO: Dibuja una pirámide centrada
  // Ejemplo para tamano=5:
  //     *
  //    ***
  //   *****
  //  *******
  // *********
}

void dibujarEscalera(int tamano) {
  print('\n📶 ESCALERA:');
  // TODO: Dibuja una escalera descendente
  // Ejemplo para tamano=5:
  // *****
  // ****
  // ***
  // **
  // *
}
```

**Desafío adicional:**
- Añade un patrón de rombo
- Permite elegir el carácter a usar (* # @ -)
- Dibuja los patrones con bordes vacíos (solo el contorno)

---

## Ejercicio 4: Analizador de Números Primos 🔢

Crea un programa que encuentre y analice números primos en un rango.

**Requisitos:**
- Lee dos números: inicio y fin del rango
- Encuentra todos los números primos en ese rango
- Cuenta cuántos primos encontró
- Calcula la suma de todos los primos
- Muestra el promedio de los primos
- Usa funciones auxiliares
- Usa bucles con break o continue cuando sea apropiado

**Código base:**
```dart
import 'dart:io';

void main() {
  print('╔═══════════════════════════════════════╗');
  print('║     ANALIZADOR DE NÚMEROS PRIMOS      ║');
  print('╚═══════════════════════════════════════╝\n');
  
  stdout.write('Ingresa el número inicial: ');
  String? inicioStr = stdin.readLineSync();
  int? inicio = int.tryParse(inicioStr ?? '0');
  
  stdout.write('Ingresa el número final: ');
  String? finStr = stdin.readLineSync();
  int? fin = int.tryParse(finStr ?? '0');
  
  if (inicio == null || fin == null || inicio < 2 || fin <= inicio) {
    print('❌ Rango inválido');
    return;
  }
  
  // TODO: Encuentra todos los primos en el rango
  List<int> primos = [];
  
  // for (int num = inicio; num <= fin; num++) {
  //   if (esPrimo(num)) {
  //     primos.add(num);
  //   }
  // }
  
  // TODO: Calcula estadísticas
  // int cantidad = primos.length;
  // int suma = ...
  // double promedio = ...
  
  // TODO: Muestra los resultados
  print('\n═══ RESULTADOS ═══');
  print('Rango: $inicio - $fin');
  // print('Números primos encontrados: $cantidad');
  // print('Primos: $primos');
  // print('Suma: $suma');
  // print('Promedio: ${promedio.toStringAsFixed(2)}');
}

bool esPrimo(int numero) {
  // TODO: Implementa la verificación de número primo
  // Un número es primo si solo es divisible por 1 y por sí mismo
  // Pistas:
  // - Si numero < 2, no es primo
  // - Verifica divisibilidad desde 2 hasta sqrt(numero)
  // - Usa continue o break para optimizar
  
  if (numero < 2) return false;
  
  // Tu código aquí
  
  return true; // Cambia esto
}
```

**Casos de prueba:**
- Rango 1-10: Primos = [2, 3, 5, 7], Cantidad = 4, Suma = 17
- Rango 10-20: Primos = [11, 13, 17, 19], Cantidad = 4, Suma = 60
- Rango 50-60: Primos = [53, 59], Cantidad = 2, Suma = 112

**Desafío adicional:**
- Muestra el primo más grande del rango
- Calcula la diferencia promedio entre primos consecutivos
- Permite encontrar los primeros N primos (en lugar de un rango)

---

## Ejercicio 5: Juego de Adivinar el Número 🎯

Crea un juego donde el programa genera un número aleatorio y el usuario debe adivinarlo.

**Requisitos:**
- Genera un número aleatorio entre 1 y 100
- Permite intentos ilimitados
- Da pistas: "más alto" o "más bajo"
- Cuenta el número de intentos
- Muestra una puntuación basada en los intentos
- Permite jugar varias veces
- Usa bucles, condicionales y control de flujo

**Código base:**
```dart
import 'dart:io';
import 'dart:math';

void main() {
  bool jugarOtraVez = true;
  
  while (jugarOtraVez) {
    print('\n╔═══════════════════════════════════════╗');
    print('║     🎯 ADIVINA EL NÚMERO              ║');
    print('╚═══════════════════════════════════════╝\n');
    
    // TODO: Genera un número aleatorio entre 1 y 100
    Random random = Random();
    int numeroSecreto = random.nextInt(100) + 1; // 1 a 100
    
    int intentos = 0;
    bool adivinado = false;
    
    print('He pensado un número entre 1 y 100.');
    print('¿Puedes adivinarlo?\n');
    
    // TODO: Bucle de juego
    // while (!adivinado) {
    //   intentos++;
    //   stdout.write('Intento #$intentos - Tu número: ');
    //   String? entradaStr = stdin.readLineSync();
    //   int? entrada = int.tryParse(entradaStr ?? '0');
    //   
    //   // Validar entrada
    //   if (entrada == null || entrada < 1 || entrada > 100) {
    //     print('❌ Ingresa un número entre 1 y 100');
    //     intentos--; // No cuenta como intento válido
    //     continue;
    //   }
    //   
    //   // Comparar con el número secreto
    //   if (entrada == numeroSecreto) {
    //     adivinado = true;
    //     // Mostrar mensaje de victoria
    //   } else if (entrada < numeroSecreto) {
    //     // Dar pista: más alto
    //   } else {
    //     // Dar pista: más bajo
    //   }
    // }
    
    // TODO: Calcular y mostrar puntuación
    // String puntuacion = calcularPuntuacion(intentos);
    // print('\n🏆 Puntuación: $puntuacion');
    
    // Preguntar si quiere jugar otra vez
    stdout.write('\n¿Jugar otra vez? (s/n): ');
    String? respuesta = stdin.readLineSync()?.toLowerCase();
    jugarOtraVez = (respuesta == 's' || respuesta == 'si' || respuesta == 'sí');
  }
  
  print('\n👋 ¡Gracias por jugar!');
}

String calcularPuntuacion(int intentos) {
  // TODO: Asigna puntuación según intentos
  // 1-5 intentos: ⭐⭐⭐ Excelente
  // 6-10 intentos: ⭐⭐ Muy bien
  // 11-15 intentos: ⭐ Bien
  // 16+ intentos: 💪 Sigue practicando
  
  if (intentos <= 5) {
    return '⭐⭐⭐ Excelente';
  } else if (intentos <= 10) {
    return '⭐⭐ Muy bien';
  } else if (intentos <= 15) {
    return '⭐ Bien';
  } else {
    return '💪 Sigue practicando';
  }
}
```

**Salida esperada (ejemplo):**
```
╔═══════════════════════════════════════╗
║     🎯 ADIVINA EL NÚMERO              ║
╚═══════════════════════════════════════╝

He pensado un número entre 1 y 100.
¿Puedes adivinarlo?

Intento #1 - Tu número: 50
📈 Mi número es más alto

Intento #2 - Tu número: 75
📉 Mi número es más bajo

Intento #3 - Tu número: 63
📈 Mi número es más alto

Intento #4 - Tu número: 69
📉 Mi número es más bajo

Intento #5 - Tu número: 66
🎉 ¡CORRECTO! El número era 66

🏆 Puntuación: ⭐⭐⭐ Excelente
💯 Lo lograste en 5 intentos

¿Jugar otra vez? (s/n): n

👋 ¡Gracias por jugar!
```

**Desafío adicional:**
- Añade niveles de dificultad (fácil: 1-50, medio: 1-100, difícil: 1-200)
- Limita el número de intentos según la dificultad
- Guarda el récord de menos intentos
- Añade un modo "trampa" que muestre el número con un 10% de probabilidad

---

## 🎯 Objetivos de Aprendizaje

Estos ejercicios te ayudarán a practicar:

- ✅ Bucles: for, while, do-while
- ✅ Condicionales: if-else, switch-case
- ✅ Control de flujo: break, continue, return
- ✅ Bucles anidados
- ✅ Entrada/salida con consola
- ✅ Funciones auxiliares
- ✅ Validación de datos
- ✅ Lógica de juegos y menús

---

## 📝 Consejos

1. **Bucles infinitos**: Ten cuidado con `while (true)`, siempre incluye una condición de salida con `break`
2. **Validación**: Valida siempre la entrada del usuario antes de usarla
3. **Continue vs Break**: 
   - `break` sale completamente del bucle
   - `continue` salta a la siguiente iteración
4. **Switch**: No olvides el `break` en cada caso (excepto cuando quieras que continúe al siguiente)
5. **Bucles anidados**: Indenta correctamente para mantener la legibilidad
6. **Funciones**: Divide el código en funciones pequeñas y reutilizables

¡Buena suerte! 🚀
