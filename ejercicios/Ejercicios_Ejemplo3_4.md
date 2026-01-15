# 📋 Ejercicios - Ejemplo 3_4: Patrones Avanzados y Expertos

## Nivel: Avanzado-Experto

---

## Ejercicio 1: Sistema de Estados con Sealed Classes y Pattern Matching Exhaustivo

### 📝 Enunciado
Crea un sistema de gestión de pedidos con estados que:
1. Define una clase `EstadoPedido` con factory constructors para simular sealed classes:
   - `pendiente()`: Pedido recién creado
   - `procesando(String empleado)`: En proceso por un empleado
   - `enviado(String transportista, DateTime fechaEnvio)`: Enviado
   - `entregado(DateTime fechaEntrega)`: Entregado exitosamente
   - `cancelado(String motivo)`: Cancelado
2. Procesa una lista de pedidos con diferentes estados
3. Usa **pattern matching exhaustivo** con switch para manejar cada estado
4. Genera un reporte con:
   - Tiempo promedio de entrega (desde creación hasta entrega)
   - Tasa de cancelación
   - Empleado más productivo
   - Transportista más usado
5. Usa **where**, **map**, **forEach** para análisis de datos

**Pedidos de prueba (cada pedido es un Map con id, estado y fechaCreacion):**
```dart
[
  {id: 1, estado: EstadoPedido.entregado(DateTime(2024,1,15)), fechaCreacion: DateTime(2024,1,10)},
  {id: 2, estado: EstadoPedido.procesando('Juan'), fechaCreacion: DateTime(2024,1,12)},
  {id: 3, estado: EstadoPedido.enviado('DHL', DateTime(2024,1,14)), fechaCreacion: DateTime(2024,1,11)},
  {id: 4, estado: EstadoPedido.cancelado('Sin stock'), fechaCreacion: DateTime(2024,1,13)},
  {id: 5, estado: EstadoPedido.entregado(DateTime(2024,1,16)), fechaCreacion: DateTime(2024,1,12)},
  {id: 6, estado: EstadoPedido.procesando('María'), fechaCreacion: DateTime(2024,1,14)},
]
```

### 🎯 Salida Esperada
```
╔══════════════════════════════════════╗
║  SISTEMA DE GESTIÓN DE PEDIDOS       ║
╚══════════════════════════════════════╝

📦 Analizando 6 pedidos...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📋 PEDIDO #1
Estado: ✅ Entregado
Fecha creación: 2024-01-10
Fecha entrega: 2024-01-15
⏱️ Tiempo de entrega: 5 días

📋 PEDIDO #2
Estado: 🔄 En proceso
Empleado: Juan
Fecha creación: 2024-01-12

📋 PEDIDO #3
Estado: 📦 Enviado
Transportista: DHL
Fecha envío: 2024-01-14
Fecha creación: 2024-01-11

📋 PEDIDO #4
Estado: ❌ Cancelado
Motivo: Sin stock
Fecha creación: 2024-01-13

📋 PEDIDO #5
Estado: ✅ Entregado
Fecha creación: 2024-01-12
Fecha entrega: 2024-01-16
⏱️ Tiempo de entrega: 4 días

📋 PEDIDO #6
Estado: 🔄 En proceso
Empleado: María
Fecha creación: 2024-01-14

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 RESUMEN EJECUTIVO:

📈 ESTADÍSTICAS GENERALES:
✓ Total de pedidos: 6
✓ Entregados: 2 (33.33%)
✓ En proceso: 2 (33.33%)
✓ Enviados: 1 (16.67%)
✓ Cancelados: 1 (16.67%)

⏱️ TIEMPOS:
✓ Tiempo promedio de entrega: 4.5 días
✓ Entrega más rápida: 4 días
✓ Entrega más lenta: 5 días

👥 EMPLEADOS:
✓ Pedidos en proceso: 2
✓ Empleados activos: Juan, María

🚚 LOGÍSTICA:
✓ Transportistas usados: DHL (1 envío)

⚠️ ALERTAS:
❌ Tasa de cancelación: 16.67%
📦 1 pedido en tránsito
```

⏱️ **Tiempo estimado:** 40-45 minutos

---

## Ejercicio 2: Generador de Secuencias con Yield

### 📝 Enunciado
Crea un sistema de generadores que:
1. Implementa un generador Fibonacci con `sync*` y `yield`
2. Implementa un generador de números primos
3. Implementa un generador de secuencia combinada (números que son tanto Fibonacci como primos)
4. Cada generador debe ser "lazy" (no calcula hasta que se solicita)
5. Limita cada secuencia a los primeros N elementos
6. Muestra estadísticas: suma total, promedio, máximo, mínimo
7. Usa **where** para filtrar, **take** para limitar, **reduce** para calcular

**Parámetros:**
- Primeros 15 números de Fibonacci
- Primeros 15 números primos
- Primeros 5 números que son tanto Fibonacci como primos

### 🎯 Salida Esperada
```
╔══════════════════════════════════════╗
║  GENERADOR DE SECUENCIAS             ║
╚══════════════════════════════════════╝

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 SECUENCIA FIBONACCI (15 primeros)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Generando...
1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610

📈 ESTADÍSTICAS:
✓ Cantidad: 15
✓ Suma total: 1,596
✓ Promedio: 106.4
✓ Mínimo: 1
✓ Máximo: 610

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 SECUENCIA PRIMOS (15 primeros)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Generando...
2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47

📈 ESTADÍSTICAS:
✓ Cantidad: 15
✓ Suma total: 328
✓ Promedio: 21.87
✓ Mínimo: 2
✓ Máximo: 47

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 SECUENCIA FIBONACCI-PRIMOS (5 primeros)
(Números que son tanto Fibonacci como primos)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Generando...
2, 3, 5, 13, 89

📈 ESTADÍSTICAS:
✓ Cantidad: 5
✓ Suma total: 112
✓ Promedio: 22.4
✓ Mínimo: 2
✓ Máximo: 89

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💡 CURIOSIDADES:
✓ Solo 5 de los primeros 15 Fibonacci son primos (33.33%)
✓ El ratio Fibonacci-Primos disminuye conforme la secuencia avanza
✓ Los números Fibonacci-Primos se vuelven muy raros
```

⏱️ **Tiempo estimado:** 35-40 minutos

---

## Ejercicio 3: Sistema de Procesamiento Asíncrono con Streams

### 📝 Enunciado
Crea un sistema de procesamiento de logs que:
1. Simula un stream de eventos de log que llegan cada 200ms
2. Cada log tiene: `timestamp`, `nivel` (INFO, WARNING, ERROR), `mensaje`
3. Procesa el stream con `await for`
4. Implementa filtros en tiempo real:
   - Cuenta eventos por nivel
   - Detecta patrones de error (3 ERRORs seguidos = alerta crítica)
   - Calcula tasa de errores por segundo
5. Usa **control de flujo** con `break` si hay alerta crítica
6. Usa **try-catch** para manejar errores en el stream
7. Genera un reporte final con estadísticas

**Eventos simulados (cada uno tiene 200ms de intervalo):**
```dart
[
  {'nivel': 'INFO', 'mensaje': 'Sistema iniciado'},
  {'nivel': 'INFO', 'mensaje': 'Conexión establecida'},
  {'nivel': 'WARNING', 'mensaje': 'Memoria al 80%'},
  {'nivel': 'ERROR', 'mensaje': 'Timeout en BD'},
  {'nivel': 'INFO', 'mensaje': 'Reintentar conexión'},
  {'nivel': 'ERROR', 'mensaje': 'Fallo de autenticación'},
  {'nivel': 'ERROR', 'mensaje': 'Servicio no disponible'},
  {'nivel': 'INFO', 'mensaje': 'Sistema recuperado'},
]
```

### 🎯 Salida Esperada
```
╔══════════════════════════════════════╗
║  MONITOR DE LOGS EN TIEMPO REAL      ║
╚══════════════════════════════════════╝

🔍 Iniciando monitorización...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[00:00.200] ℹ️ INFO: Sistema iniciado
📊 Stats: INFO: 1 | WARNING: 0 | ERROR: 0

[00:00.400] ℹ️ INFO: Conexión establecida
📊 Stats: INFO: 2 | WARNING: 0 | ERROR: 0

[00:00.600] ⚠️ WARNING: Memoria al 80%
📊 Stats: INFO: 2 | WARNING: 1 | ERROR: 0

[00:00.800] ❌ ERROR: Timeout en BD
📊 Stats: INFO: 2 | WARNING: 1 | ERROR: 1
⚠️ Errores consecutivos: 1

[00:01.000] ℹ️ INFO: Reintentar conexión
📊 Stats: INFO: 3 | WARNING: 1 | ERROR: 1
✓ Contador de errores reseteado

[00:01.200] ❌ ERROR: Fallo de autenticación
📊 Stats: INFO: 3 | WARNING: 1 | ERROR: 2
⚠️ Errores consecutivos: 1

[00:01.400] ❌ ERROR: Servicio no disponible
📊 Stats: INFO: 3 | WARNING: 1 | ERROR: 3
⚠️ Errores consecutivos: 2

🚨🚨🚨 ALERTA CRÍTICA 🚨🚨🚨
⛔ Detectados 3 errores consecutivos
⛔ Deteniendo monitorización por seguridad

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 REPORTE FINAL:

⏱️ TIEMPO:
✓ Duración total: 1.4 segundos
✓ Eventos procesados: 7/8

📈 ESTADÍSTICAS POR NIVEL:
✓ INFO: 3 eventos (42.86%)
✓ WARNING: 1 evento (14.29%)
✓ ERROR: 3 eventos (42.86%)

⚠️ ANÁLISIS DE ERRORES:
❌ Tasa de errores: 2.14 errores/segundo
❌ Secuencia máxima de errores: 3 consecutivos
🚨 Nivel de alerta: CRÍTICO

💡 RECOMENDACIONES:
⚠️ Revisar logs de base de datos
⚠️ Verificar servicio de autenticación
⚠️ Revisar disponibilidad de servicios
```

⏱️ **Tiempo estimado:** 45-50 minutos

---

## Ejercicio 4: Algoritmo de Pathfinding con Recursión

### 📝 Enunciado
Crea un sistema de búsqueda de caminos que:
1. Define un laberinto como matriz 5x5 donde:
   - `0` = camino libre
   - `1` = pared
   - `S` = inicio (Start)
   - `E` = fin (End)
2. Implementa un algoritmo recursivo para encontrar el camino
3. Usa **recursión** con backtracking
4. Marca el camino encontrado con `*`
5. Cuenta el número de pasos y pasos totales explorados
6. Muestra el laberinto inicial, el proceso de búsqueda y el resultado final
7. Maneja casos sin solución

**Laberinto de prueba:**
```
S 0 1 0 0
0 0 1 0 1
1 0 0 0 0
0 1 1 1 0
0 0 0 0 E
```

### 🎯 Salida Esperada
```
╔══════════════════════════════════════╗
║  PATHFINDING - BÚSQUEDA DE CAMINO    ║
╚══════════════════════════════════════╝

🗺️ LABERINTO INICIAL:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  0 1 2 3 4
0 S 0 █ 0 0
1 0 0 █ 0 █
2 █ 0 0 0 0
3 0 █ █ █ 0
4 0 0 0 0 E
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔍 Iniciando búsqueda desde (0,0)...

Explorando (0,0) → Inicio
Explorando (0,1) → Válido
Explorando (1,1) → Válido
Explorando (2,1) → Válido
Explorando (2,2) → Válido
Explorando (2,3) → Válido
Explorando (2,4) → Válido
Explorando (3,4) → Válido
Explorando (4,4) → ¡Meta encontrada!

✅ Camino encontrado!

🗺️ LABERINTO CON CAMINO:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  0 1 2 3 4
0 * * █ 0 0
1 0 * █ 0 █
2 █ * * * *
3 0 █ █ █ *
4 0 0 0 0 *
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 ESTADÍSTICAS:
✓ Camino encontrado: SÍ
✓ Longitud del camino: 11 pasos
✓ Nodos explorados: 15
✓ Eficiencia: 73.33%
✓ Movimientos:
  → Derecha: 4
  → Abajo: 4
  → Izquierda: 0
  → Arriba: 0

💡 ANÁLISIS:
✓ Camino óptimo o cercano al óptimo
✓ Pocas casillas exploradas innecesariamente
```

⏱️ **Tiempo estimado:** 50-60 minutos

---

## 💡 Consejos Avanzados

### Pattern Matching:
- Usa sealed classes (simuladas) para representar estados mutuamente excluyentes
- Switch exhaustivo garantiza que manejas todos los casos
- Los factory constructors ayudan a simular sealed classes en Dart

### Generadores (sync* y async*):
- `sync*` + `yield` para generadores síncronos (devuelven `Iterable`)
- `async*` + `yield` para generadores asíncronos (devuelven `Stream`)
- Son "lazy" - no calculan hasta que se consumen
- Perfectos para secuencias potencialmente infinitas

### Streams:
- `await for` procesa streams de forma asíncrona
- Usa `take(n)` para limitar eventos
- `where()` filtra eventos
- Siempre maneja errores con try-catch

### Recursión:
- Define caso base (condición de parada)
- Asegura que cada llamada recursiva se acerca al caso base
- Usa backtracking para explorar múltiples caminos
- Cuidado con recursión infinita
- Para debugging, añade prints con indentación según profundidad

### Análisis de Datos:
- `reduce()` combina elementos en un valor (suma, máximo, etc.)
- `fold()` similar a reduce pero con valor inicial
- `map()` transforma cada elemento
- `where()` filtra elementos
- Combina operaciones para análisis complejos

### DateTime:
- `DateTime.now()` para timestamp actual
- `.difference()` para calcular intervalos
- `.inDays`, `.inHours` para convertir duraciones
