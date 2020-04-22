footer: © ADD Costa Tropical 2020 - Power Shell
slidenumbers: true
autoscale: true
<!-- slide-transition: true -->

## Power Shell Cap. 5

### Operadores aritméticos

![](WindowsPowerShell.jpg)

---

## Capítulo anterior (4) vimos

- Variables
- Tipos de datos que podemos almacenar
- Forma de definirlar

---

## Índice Capítulo 5

- Necesidad de operadores
- Tipos de operadores
- Operador de asignación =
- Operadores aritméticos

---

## Necesidad de operadores

- ¿por qué los necesitamos?
- Operan entre variables y valores fijos
- Funcionamiento, devuelve valor intermedio, si se almacena
- Se pueden concatenar
- Su funcionamiento dependerá del tipo de variable

---

## Tipos de operadores básicos

- Operadores aritméticos
- Operadores lógicos
- Operadores de comparación

---

## Operador de asignación =

- Modifica el valor de una variable
- Puede modificar también el tipo si no está establecido
- Funciona de derecha a izquierda
- Lo que asigna es el valor (ejemplo siguiente)
- No confundir con ==

---

## Operador de asignación = (ejemplo)

```powershell
$nombre = "ADD Costa Tropical"
$nombre_b = $nombre
$nombre = "Motril"
Write-Host $nombre
Write-Host $nombre_b
```

- ¿Qué imprime este código?

---

## Operadores aritméticos

- Operador suma +
- Operador resta -
- Operador multiplicación *
- Operador división /
- Operador resto %
- Operador +=
- Operador ++

---

## Operador + suma

- Depende del tipo de variable actuará de una forma u otra
- No es lo mismo sumar números que sumar cadenas de caracteres

```powershell
Write-Host (5+6)
$suma = 5 + 6
Write-Host $suma
```

---

## Operador + con números

- Suma el valor y devuelve el resultado de la suma
- Funcionamiento claro aunque cuidado con los tipos de variables
- Funciona con valores estáticos o variables

```powershell
Write-Host (5+6)
$n = 5
$m = 6
$suma = $n + $m
Write-Host $suma
```

---

## Operador + con strings

- Concatena las dos cadenas de caracteres y devuelve una cadena con la suma de las dos

```powershell
$first_name = "Bienvenido"
$last_name = "Sáez Muelas"
$full_name = $first_name + $last_name
Write-Host $full_name
```

- ¿Qué imprime este código?

---

## Operador de asignación + con strings II

- Versión correcta

```powershell
$first_name = "Bienvenido"
$last_name = "Sáez Muelas"
$full_name = $first_name + " " + $last_name
Write-Host $full_name
```

---

## Operador - resta

- Resta del valor de la primera variable el valor de la segunda variable y devuelve el resultado

```powershell
Write-Host (6+5)
$n = 6
$m = 5
$resta = $n + $m
Write-Host $resta
```

---

## Operador * multiplicación con números

- Multiplica el valor de los dos operandos y devuelve el resultado

```powershell
Write-Host (6*5)
$n = 6
$m = 5
$multi = $n * $m
Write-Host $multi
```

---

## Operador * multiplicación con strings

- Multiplica la cadena de caracteres tantas veces como se indique

```powershell
$nombre = "ADD"
Write-Host $nombre*5
```

- Escribirá ADD 5 veces consecutivamente

---

## Operador / división

- Divide el valor del primer operando entre el segundo operando
- Devuelve el cociente de la división
- El tipo devuelto dependerá del dividendo y el divisor: int o single

```powershell
Write-Host (6/5)
$n = 6
$m = 5
$divi = $n / $m
Write-Host $divi
```

---

## Operadores +=  -=  \*=  /=

- Forma abreviada para no repetir el valor actual de una variable y modificar su valor

```powershell
$n = 2
$n = $n + 5
```

- Forma abreviada


```powershell
$n = 2
$n += 5
```

---

## Operadores ++ y --

- Forma abreviada de incrementar o decrementar el valor de una variable

```powershell
$n = 2
$n = $n + 1
```

- Forma abreviada


```powershell
$n = 2
$n++
```

---

## Operador % Resto

- Se utiliza con dos operandos
- Devuelve el resto de la división entera realizada entre los dos operandos
- ¿Te acuérdas de cómo se dividía=
- Se utiliza muchísimo en programación, pista, ¿cómo saber si un número es par?

```powershell
$dividendo=5
$divisor=2
$cociente = $dividendo / $divisor
$resto = $dividendo % $divisor
Write-Host $cociente
Write-Host $resto
```

---

## Prioridad de operadores

- El orden de los factores no altera el producto ;-)
- Existe prioridad de operadores, como en las matemáticas
- También existe prioridad con los paréntesis

```powershell
Write-Host (5+2*5)
```

ó

```powershell
Write-Host ((5+2)*5)
```

---

![](https://media.giphy.com/media/26BRzQS5HXcEWM7du/giphy.gif)
# Preguntas y respuestas
No tengas miedo, es gratis :smile:

---

## ADD Costa Tropical

- https://addcostatropical.org
- Youtube => ADD Costa Tropical
- @addcostatropical
- #somosadd
- Facebook
- Instagram

---

## ADD Costa Tropical
- Investiga, aprende y comparte

## Gracias
- Un placer compartir con vosotros
