footer: © ADD Costa Tropical 2020 - Power Shell
slidenumbers: true
autoscale: true

<!-- slide-transition: true -->

## Power Shell Cap. 13

### Ejercicios: Condicionales

![](WindowsPowerShell.jpg)

---

## Ejercicio 1

- Escribir un programa que pregunte al usuario su edad y muestre por pantalla si es mayor de edad o no.

```powershell
[int]$edad = Read-Host "Introduce tu edad"

if($edad -lt 18) {
    Write-Host "Eres menor de edad"
} else {
    Write-Host "Eres mayor de edad"
}
```

---

## Ejercicio 2

- Escribir un programa que almacene la cadena de caracteres contraseña en una variable, pregunte al usuario por la contraseña e imprima por pantalla si la contraseña introducida por el usuario coincide con la guardada en la variable sin tener en cuenta mayúsculas y minúsculas.

---

## Ejercicio 2 solución

```powershell
$pass = "secreto"
$pass_introducida = Read-Host "Introduce tu contraseña"
if($pass_introducida -eq $pass) {
    Write-Host "Contraseña correcta"
}else {
    Write-Host "Contraseña incorrecta"
}
```

---

## Ejercicio 2 solución bloqueo

```powershell
$pass = "secreto"
$pass_introducida = Read-Host "Introduce tu contraseña"
while ($pass_introducida -ne $pass) {
    Write-Host "Contraseña incorrecta"
    $pass_introducida = Read-Host "Introduce tu contraseña"
}
Write-Host "Contraseña correcta"
```

---

## Ejercicio 3

- Escribir un programa que pida al usuario dos números y muestre por pantalla su división. Si el divisor es cero el programa debe mostrar un error.

---

## Ejercicio 3 Solución

```powershell
[int]$numero1 = Read-Host "Primer numero de la división"
[int]$numero2 = Read-Host "Segundo numero de la division"

if($numero2 -eq 0) {
    Write-Host "El divisor no puede ser 0"
} else {
    $resultado = $numero1 / $numero2
    Write-Host $resultado
}
```

---

## Ejercicio 4

- Escribir un programa que pida al usuario un número entero y muestre por pantalla si es par o impar.

---

## Ejercicio 4 Solución

```powershell
[int]$numero = Read-Host "Introduce un numero"
if($numero % 2 -eq 0) {
    Write-Host "El numero es par"
} else {
    Write-Host "El numero es impar"
}
```

---

## Ejercicio 5

- Para tributar un determinado impuesto se debe ser mayor de 16 años y tener unos ingresos iguales o superiores a 1000 € mensuales. Escribir un programa que pregunte al usuario su edad y sus ingresos mensuales y muestre por pantalla si el usuario tiene que tributar o no.

---

## Ejercicio 5 Solución

```powershell
[int]$edad = Read-Host "Introduce tu edad"
[float]$ingresos = Read-Host "Introduce tus ingresos"

if($edad -gt 16 -and $ingresos -ge 1000) {
    Write-Host "Tributa"
} else {
    Write-Host "No tributa"
}
```

---

## Ejercicio 6

- Los alumnos de un curso se han dividido en dos grupos A y B de acuerdo al sexo y el nombre. El grupo A esta formado por las mujeres con un nombre anterior a la M y los hombres con un nombre posterior a la N y el grupo B por el resto. Escribir un programa que pregunte al usuario su nombre y sexo, y muestre por pantalla el grupo que le corresponde.

---

## Ejercicio 6 solución

```powershell
$nombre = Read-Host "Introduce tu nombre"
$sexo = Read-Host "Introduce tu sexo"
if( ($sexo -eq "mujer" -and $nombre -lt "m") -or ($sexo -eq "hombre" -and $nombre -gt "n") ) {
    Write-Host "Perteneces al grupo A"
} else {
    Write-Host "Perteneces al grupo B"
}
```

---

## Ejercicio 7

- Los tramos impositivos para la declaración de la renta en un determinado país son los siguientes:

Renta Tipo impositivo
Menos de 10000€ 5%
Entre 10000€ y 20000€ 15%
Entre 200000€ y 35000€ 20%
Entre 350000€ y 60000€ 30%
Más de 60000€ 45%

- Escribir un programa que pregunte al usuario su renta anual y muestre por pantalla el tipo impositivo que le corresponde.

---

## Ejercicio 7 Solución

```powershell
[float]$renta = Read-Host "Introduce tu renta anual"
$porcentaje = $false
if($renta -lt 10000) {
    $porcentaje = "5%"
}elseif($renta -lt 20000) {
    $porcentaje = "15%"
}elseif($renta -lt 35000) {
    $porcentaje = "20%"
}elseif($renta -lt 60000) {
    $porcentaje = "30%"
}else {
    $porcentaje = "45%"
}
Write-Host "Te corresponde un $porcentaje"
```

---

## Ejercicio 8

- En una determinada empresa, sus empleados son evaluados al final de cada año. Los puntos que pueden obtener en la evaluación comienzan en 0.0 y pueden ir aumentando, traduciéndose en mejores beneficios. Los puntos que pueden conseguir los empleados pueden ser 0.0, 0.4, 0.6 o más, pero no valores intermedios entre las cifras mencionadas. A continuación se muestra una tabla con los niveles correspondientes a cada puntuación. La cantidad de dinero conseguida en cada nivel es de 2.400€ multiplicada por la puntuación del nivel.

---

## Ejercicio 8 resumen

```
Nivel Puntuación
Inaceptable 0.0
Aceptable 0.4
Meritorio 0.6 o más
```

- Escribir un programa que lea la puntuación del usuario e indique su nivel de rendimiento, así como la cantidad de dinero que recibirá el usuario.

---

## Ejercicio 8 Solución

```powershell
[decimal]$puntuacion = Read-Host "Introduzca su puntuación"
$nivel = ""

if($puntuacion -eq 0.0) {
    $nivel = "Inaceptable"
}
elseif($puntuacion -eq 0.4) { 
    $nivel = "Aceptable"
}
elseif($puntuacion -ge 0.6) {
    $nivel = "Meritorio"
}else {
    $nivel = "Invalido"
}

$dinero = (2400 * $puntuacion)

Write-Host "su Nivel es $nivel y le corresponden $dinero euros"
```

---

## Ejercicio 8 Solución Switch

```powershell
[decimal]$puntuacion = Read-Host "Introduzca su puntuación"
$nivel = ""

switch ($puntuacion) {
    {$_ -eq 0.0}{$nivel = "Inaceptable" Break }
    {$_ -eq 0.4}{ $nivel = "Aceptable" Break }
    {$_ -ge 0.6}{ $nivel = "Meritorio" Break }
    default { $nivel = "Invalido" }
}

$dinero = (2400 * $puntuacion)

Write-Host "su Nivel es $nivel y le corresponden $dinero euros"
```

---

## Fin

- Ejercicios gracias a:
-  http://aprendeconalf.es/

---

![](https://media.giphy.com/media/26BRzQS5HXcEWM7du/giphy.gif)

# Preguntas y respuestas

No tengas miedo, es gratis :smile:

---

## ADD Costa Tropical

- https://addcostatropical.org
- Youtube => ADD Costa Tropical
- Instagram personal: @bienvenidosaez
- Instagram ADD: @addcostatropical
- #somosadd

---

## ADD Costa Tropical

- Investiga, aprende y comparte

## Gracias

- Un placer compartir con vosotros
