footer: © ADD Costa Tropical 2020 - Power Shell
slidenumbers: true
autoscale: true

<!-- slide-transition: true -->

## Power Shell Cap. 14

### Ejercicios: Estructuras repetitivas

![](WindowsPowerShell.jpg)

---

## Ejercicio 1

- Escribir un programa que pida al usuario una palabra y la muestre por pantalla 10 veces.

```powershell
$i = 0
$palabra = Read-Host "Introduce una palabra"

while($i -lt 10) {
    Write-Host $palabra
    $i++
}
```

---

## Ejercicio 2

- Escribir un programa que pregunte al usuario su edad y muestre por pantalla todos los años que ha cumplido (desde 1 hasta su edad).

---

## Ejercicio 2 solución while

```powershell
[int]$edad = Read-Host "Introduce tu edad"

$i = 1

while($i -lt $edad) {
   Write-Host $i
   $i++
}
```

---

## Ejercicio 2 solución for

```powershell
[int]$edad = Read-Host "Introduce tu edad"

$i = 1

for($i=1; $i -lt $edad; $i++){
    Write-Host $i
}
```

---

## Ejercicio 3

- Escribir un programa que pida al usuario un número entero positivo y muestre por pantalla todos los números impares desde 1 hasta ese número separados por comas.

---

## Ejercicio 3 Solución

```powershell
[int]$numero = Read-Host "Introduce un numero"
$texto = ""
for($i=1; $i -lt $numero; $i++){
    if($i%2 -eq 1) {
        $texto+=[string]$i + ","
    }
}
Write-Host $texto
```

---

## Ejercicio 4

- Escribir un programa que pida al usuario un número entero positivo y muestre por pantalla la cuenta atrás desde ese número hasta cero separados por comas.

---

## Ejercicio 4 Solución

```powershell
[int]$numero = Read-Host "Introduce un numero"
$salida = ""
for($i=$numero; $i -ge 0; $i--){
    $salida+=[string]$i + ","
}
Write-Host $salida
```

---

## Ejercicio 5

- Escribir un programa que pida al usuario un número entero y muestre por pantalla un triángulo rectángulo como el de más abajo, de altura el número introducido.

```
*
**
***
****
*****
```

---

## Ejercicio 5 Solución

```powershell
[int]$numero = Read-Host "Introduce un numero"
$salida = ""
for($i = 0; $i -lt $numero ; $i++) {
    $salida+="*"
    Write-Host $salida
}
```

---

## Ejercicio 6

- Escribir un programa que muestre por pantalla la tabla de multiplicar del 1 al 10.

---

## Ejercicio 6 solución

```powershell
for($i = 1 ; $i -le 10 ; $i++) {
    Write-Host " Tabla del $i : "
    for($b = 1 ; $b -le 10; $b++) {
        Write-Host "$i * $b = " , ($i * $b)
    }
    Write-Host "------"
}
```

---

## Ejercicio 7

- Escribir un programa que almacene la cadena de caracteres contraseña en una variable, pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta.

---

## Ejercicio 7 Solución

```powershell
$valid_pass = "secret"
do {
    $pass = Read-host "Introduce la contraseña"
}while($valid_pass -ne $pass)
Write-Host "Bienvenido a tu cuenta"
```

---

## Ejercicio 8

- Escribir un programa que pida al usuario un número entero y muestre por pantalla si es un número primo o no.

---

## Ejercicio 8 Solución

```powershell
[int]$numero = Read-Host "Introduce un numero"
$i = 2
$tiene_divisores = $false
while($i -le $numero/2) {
    if(($numero%$i) -eq 0){
        $tiene_divisores = $true
        Break
    }else {
        $i++
    }
}

if($tiene_divisores -eq $true) {
    Write-Host "$numero no es primo"
}
else {
    Write-Host "$numero es primo"
}
```

---

## Ejercicio 9

- Escribir un programa en el que se pregunte al usuario por una frase y una letra, y muestre por pantalla el número de veces que aparece la letra en la frase.

---

## Ejercicio 9 Solución

```powershell
$frase = Read-Host "Introduce una frase"
$letra = Read-Host "Introduce una letra"
$apariciones = 0

for($i = 0 ; $i -lt $frase.Length ; $i++) {
    if($frase[$i] -eq $letra) {
        $apariciones++
    }
}

Write-Host "Aparece $apariciones veces"
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
