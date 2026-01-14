º# Ejercicios: Fundamentos de Dart - Basados en ejemplo1.dart

## Nivel 1: Principiante 🟢

### Ejercicio 1.1: Saludo Interactivo
Crea un programa Dart que imprima un mensaje de bienvenida a un curso de Dart.

**Pistas:**
- Usa la función `main()`
- Utiliza `print()` para mostrar múltiples líneas
- Puedes usar escape sequences como `\n`

**Resultado esperado:**
```
═══════════════════════════════════════
   ¡Bienvenido al Curso de Dart!
═══════════════════════════════════════
Este es un lenguaje versátil y moderno.
Prepárate para aprender programación.
```

---

### Ejercicio 1.2: Información Personal
Modifica el programa para aceptar el nombre y edad como argumentos de línea de comandos e imprimir una presentación personal.

**Pistas:**
- La función `main()` recibe un parámetro `List<String> args`
- Verifica si hay al menos 2 argumentos
- Accede a `args[0]` para el nombre y `args[1]` para la edad
- Usa interpolación de strings

**Ejecución:**
```bash
dart ejercicio1_2.dart "María García" 22
```

**Resultado esperado:**
```
Hola, mi nombre es María García
Tengo 22 años
Soy estudiante de Dart en el curso de Getafe
```

---

### Ejercicio 1.3: Datos de un Producto
Declara y asigna valores para una tienda de electrónica:
- Nombre del producto (String)
- Precio unitario (double)
- Cantidad en stock (int)
- Disponible (bool)

Luego imprime un reporte del producto.

**Código inicial:**
```dart
void main() {
  // Declara aquí tus variables para un producto
  
  print('Producto: [nombre]');
  print('Precio: €[precio]');
  print('Stock: [cantidad] unidades');
  print('Disponible: [disponible]');
}
```

---

### Ejercicio 1.4: Conversión de Temperaturas
Crea un programa que demuestre la flexibilidad de `var` y `dynamic` al trabajar con temperaturas:

```dart
void main() {
  var temperaturaActual = 25; // Tipo inferido como int
  // temperaturaActual = 25.5; // ¿Qué pasa si descomenta esta línea?
  
  dynamic lecturaTemperatura; // Puede ser cualquier tipo
  lecturaTemperatura = 20;
  lecturaTemperatura = 22.7;
  lecturaTemperatura = 'Sin medidor';
  
  print('Temperatura actual: $temperaturaActual°C');
  print('Lectura flexible: $lecturaTemperatura');
}
```

**Preguntas:**
1. ¿Qué tipo de error obtienes si intentas asignar 25.5 a `temperaturaActual`?
2. ¿Por qué `dynamic` puede cambiar de tipo?
3. ¿En qué situación real necesitarías usar `dynamic`?

---

## Nivel 2: Intermedio 🟡

### Ejercicio 2.1: Cálculo del Precio Total con IVA
Crea una función `calcularPrecioConIVA(double precioBase, double ivaPercentaje)` que calcula el precio final de un producto.

**Requisitos:**
- La función debe retornar un `double`
- El main() debe llamar a la función con diferentes productos
- Redondea el resultado a 2 decimales usando `toStringAsFixed(2)`
- Crea un reporte detallado mostrando desglose

**Código inicial:**
```dart
double calcularPrecioConIVA(double precioBase, double ivaPorcentaje) {
  // Tu código aquí
}

void main() {
  print('=== Cálculo de Precios ===');
  double precioBase = 100;
  double iva = 21;
  
  print('Precio base: €$precioBase');
  print('IVA ($iva%): €${(precioBase * iva / 100).toStringAsFixed(2)}');
  print('Precio final: €${calcularPrecioConIVA(precioBase, iva)}');
}
```

---

### Ejercicio 2.2: Gestión de Notas de Estudiantes
Crea un programa que gestione una lista de calificaciones.

**Requisitos:**
- Define una lista de notas de estudiantes: `[8.5, 7.2, 9.1, 6.8, 8.9]`
- Agrega una nueva nota (8.3)
- Imprime todas las notas
- Imprime la nota en la posición 2
- Cuenta cuántos estudiantes aprobaron (nota >= 7.0)
- Calcula la nota promedio

**Resultado esperado:**
```
Notas: [8.5, 7.2, 9.1, 6.8, 8.9, 8.3]
Nota en posición 2: 9.1
Estudiantes que aprobaron: 5
Nota promedio: 8.13
```

---

### Ejercicio 2.3: Inventario de Librería
Crea un diccionario que almacene títulos de libros y sus precios.

**Requisitos:**
- Define un `Map<String, double>` con al menos 5 libros y sus precios
- Agrega un nuevo libro
- Imprime todos los títulos
- Imprime todos los precios
- Busca el precio de un libro específico
- Calcula el valor total del inventario

**Código inicial:**
```dart
void main() {
  Map<String, double> libreria = {
    'Don Quijote': 15.99,
    'Cien años de soledad': 18.50,
    '1984': 12.99
  };
  
  // Tu código aquí
  
  print('Libros: ${libreria.keys}');
  print('Precios: ${libreria.values}');
  print('Precio de Don Quijote: €${libreria['Don Quijote']}');
}
```

---

### Ejercicio 2.4: Lenguajes de Programación
Crea un programa que maneje un conjunto de lenguajes que dominas.

**Requisitos:**
- Define un `Set<String>` con al menos 4 lenguajes
- Intenta agregar un lenguaje duplicado y observa qué pasa
- Calcula el número total de lenguajes
- Verifica si dominas un lenguaje específico
- Agrega dos lenguajes más y muestra el conjunto actualizado

**Código inicial:**
```dart
void main() {
  Set<String> lenguajes = {'Dart', 'Java', 'Python'};
  
  // Tu código aquí
  
  print('Lenguajes: $lenguajes');
  print('Total de lenguajes: ${lenguajes.length}');
  print('¿Dominas Dart? ${lenguajes.contains('Dart')}');
}
```

---

### Ejercicio 2.5: Descripción de un Proyecto
Crea un programa que imprima la descripción de un proyecto de software usando textos multilínea.

**Requisitos:**
- Usa triple comilla para texto multilínea (`'''...'''`)
- Incluye información sobre el proyecto: nombre, descripción, objetivos
- Demuestra que se preserva el formato y el espaciado

**Ejemplo:**
```dart
void main() {
  String proyectoDescripcion = '''
    ╔═════════════════════════════════════════════╗
    ║      GESTOR DE TAREAS - PROYECTO DART       ║
    ╚═════════════════════════════════════════════╝
    
    DESCRIPCIÓN:
    Aplicación de consola para gestionar tareas diarias
    
    OBJETIVOS:
    • Crear, eliminar y actualizar tareas
    • Marcar tareas como completadas
    • Generar reportes de productividad
    
    TECNOLOGÍA: Dart + Flutter
  ''';
  
  print(proyectoDescripcion);
}
```

---

## Nivel 3: Avanzado 🔴

### Ejercicio 3.1: Constantes de Configuración
Crea un programa que demuestre el uso de `final` y `const` para configuración de aplicación.

**Requisitos:**
- Define constantes de compilación (`const`) como puerto, versión, autor
- Define valores finales de ejecución (`final`) como fecha de inicio, hostname
- Documenta la diferencia práctica

**Código inicial:**
```dart
void main() {
  const int puerto = 8080; // Configuración fija en compilación
  const String version = '1.0.0';
  const String autor = 'Tu Nombre';
  
  final DateTime fechaInicio = DateTime.now(); // Evaluado al ejecutarse
  final String hostname = _obtenerHostname(); // Se ejecuta al correr
  
  print('=== CONFIGURACIÓN DE APLICACIÓN ===');
  print('Puerto: $puerto');
  print('Versión: $version');
  print('Autor: $autor');
  print('Inicio: $fechaInicio');
  print('Host: $hostname');
}

String _obtenerHostname() => 'localhost';
```

**Preguntas:**
1. ¿Por qué `DateTime.now()` no puede usarse con `const`?
2. ¿Cuándo es mejor usar `final` en lugar de `const`?

---

### Ejercicio 3.2: Datos Heterogéneos en un Sensor IoT
Crea un programa que simule datos de un sensor IoT que puede retornar diferentes tipos.

**Requisitos:**
- Define una variable `Object` para datos estructurados
- Define una variable `dynamic` para datos flexibles del sensor
- Intenta operaciones y documentar diferencias de seguridad
- Maneja nullable types

**Código inicial:**
```dart
void main() {
  Object lecturaSensor = 'Temperatura: 25.5°C'; // Datos normales
  dynamic datosFlexibles = 1000; // Lecturas del sensor
  
  lecturaSensor = 25.5;
  datosFlexibles = 26.3;
  datosFlexibles = 'ERROR_SENSOR';
  datosFlexibles = null;
  
  Object? datosOpcionales = null; // Puede ser null
  // Object datosNoNulos = null; // ¿Por qué falla?
  
  print('Lectura del sensor: $lecturaSensor');
  print('Datos flexibles: $datosFlexibles');
}
```

**Preguntas:**
1. ¿Cuál es la ventaja de `Object?` sobre `Object`?
2. ¿En qué casos necesitas `dynamic` en aplicaciones reales?

---

### Ejercicio 3.3: Validador de Contraseña
Crea un programa que valide una contraseña pasada como argumento y proporcione feedback.

**Requisitos:**
- Recibe una contraseña como argumento
- Valida que tenga al menos 8 caracteres
- Verifica si contiene números
- Verifica si contiene letras mayúsculas
- Imprime un reporte de seguridad
- Maneja el caso sin argumentos

**Código inicial:**
```dart
void main(List<String> args) {
  if (args.isEmpty) {
    print('Uso: dart ejercicio3_3.dart <contraseña>');
    print('Ejemplo: dart ejercicio3_3.dart "MiPass123"');
    return;
  }
  
  String password = args[0];
  
  // Tu código aquí
  // Valida longitud, números, mayúsculas
  // Genera un reporte de fortaleza
}
```

**Ejecución esperada:**
```bash
dart ejercicio3_3.dart "abc123"
# Resultado: Contraseña débil - Menos de 8 caracteres
```

---

### Ejercicio 3.4: Cálculo de Descuento en Compra
Crea funciones para calcular el precio final después de aplicar descuentos escalonados.

**Requisitos:**
- Función `calcularDescuento(double monto)`: devuelve el porcentaje según el monto
  - 0-50€: 0%
  - 50-100€: 5%
  - 100-250€: 10%
  - 250€+: 15%
- Función `aplicarDescuento(double monto, double descuento)`: calcula precio final
- El main() prueba con múltiples compras
- Valida que el monto sea positivo

**Código inicial:**
```dart
double calcularDescuento(double monto) {
  // Tu código aquí
}

double aplicarDescuento(double monto, double descuento) {
  // Tu código aquí
}

void main() {
  List<double> compras = [25.0, 75.0, 150.0, 300.0];
  
  for (double monto in compras) {
    double desc = calcularDescuento(monto);
    double final_price = aplicarDescuento(monto, desc);
    print('Compra: €$monto → Descuento: $desc% → Final: €${final_price.toStringAsFixed(2)}');
  }
}
```

---

### Ejercicio 3.5: Análisis de Ventas Mensuales
Crea un programa que analice datos de ventas de una tienda.

**Requisitos:**
- Define una lista de 12 montos de venta (uno por mes)
- Calcula el total anual
- Calcula el promedio mensual
- Encuentra el mes con mayor venta
- Encuentra el mes con menor venta
- Cuenta cuántos meses superaron el promedio
- Genera un reporte detallado

**Código inicial:**
```dart
void main() {
  List<double> ventasMensuales = [
    1200.50, 1450.75, 1100.00, 1600.25, 1300.00, 1550.50,
    1250.75, 1400.00, 1350.50, 1500.00, 1600.00, 1800.50
  ];
  
  // Tu código aquí
  
  print('=== REPORTE ANUAL DE VENTAS ===');
  print('Total anual: €...');
  print('Promedio mensual: €...');
  print('Mejor mes: €...');
  print('Peor mes: €...');
  print('Meses por encima del promedio: ...');
}
```

---

## Desafío Final 🏆

### Ejercicio Desafío: Sistema de Gestión de Biblioteca
Crea un gestor de biblioteca que maneje libros, autores y préstamos.

**Requisitos:**
- Crea funciones para:
  - `agregarLibro()`: añade un libro al inventario
  - `buscarLibro()`: busca un libro por título
  - `calcularValorInventario()`: suma el valor de todos los libros
  - `mostrarReporte()`: imprime un reporte completo
- Utiliza estructuras de datos apropiadas (Map, List, Set)
- Maneja argumentos de línea de comandos para las operaciones
- Valida entradas y maneja errores

**Estructura de datos sugerida:**
```dart
Map<String, Map<String, dynamic>> biblioteca = {
  'Don Quijote': {'autor': 'Cervantes', 'precio': 15.99, 'copias': 3},
  'Cien años de soledad': {'autor': 'García Márquez', 'precio': 18.50, 'copias': 2},
  // más libros...
};
```

**Ejecución esperada:**
```bash
dart desafio_final.dart reporte
# Resultado: Reporte completo de la biblioteca

dart desafio_final.dart buscar "Don Quijote"
# Resultado: Detalles del libro encontrado
```

**Desafíos adicionales:**
1. Registra préstamos en un `Set<String>` con IDs únicos
2. Calcula estadísticas por autor
3. Genera un reporte de libros con bajo stock
4. Crea un sistema de reservas

---

## Rubricas de Evaluación

### Criterios Generales:
- ✅ El código compila sin errores
- ✅ El programa produce la salida esperada
- ✅ Se utilizan los conceptos apropiados
- ✅ El código está bien comentado
- ✅ Se siguen convenciones de nombres (camelCase)
- ✅ Manejo básico de errores

### Niveles:
- **Nivel 1 (Principiante)**: Esperado completar 80-100%
- **Nivel 2 (Intermedio)**: Esperado completar 70-100%
- **Nivel 3 (Avanzado)**: Esperado completar 60-100%
- **Desafío Final**: Bonificación extra

---

## Recursos Útiles

- [Documentación oficial de Dart](https://dart.dev/guides)
- [Dart Pad (Playground Online)](https://dartpad.dev/)
- Tipos de datos: String, int, double, bool, List, Map, Set
- Funciones útiles: `print()`, `.add()`, `.length`, `.contains()`, `.toStringAsFixed()`

---

**¡Éxito en tu aprendizaje de Dart!** 🎯
